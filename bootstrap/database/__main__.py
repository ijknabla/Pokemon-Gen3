import lxml.html
import re
import requests
import sys
from typing import Iterable, Iterator, TextIO, Tuple, TypeVar

from .pokemon_bases import bases
from pokemon_gen3 import Stat
from pokemon_gen3.database._connection import get_connection


T = TypeVar("T")


def main():
    output_pokemon_bases(sys.stdout)


def output_pokemon_bases(file: TextIO):
    print(
        """\
CREATE TABLE pokemon_bases
(
    pokemon_id INTEGER,
    form_id INTEGER,
    stat_id INTEGER,
    base INTEGER,
    PRIMARY KEY(pokemon_id, form_id, stat_id)
);

INSERT INTO pokemon_bases
    (pokemon_id, form_id, stat_id, base)
VALUES"""
    )

    for (pokemon_id, form_id, stat_id, base), sep in put_sep(
        iterate_pokemon_bases()
    ):
        print(
            f"    ({pokemon_id:>10}, {form_id:>7}, {stat_id:>7}, {base:>4}){sep}",
            file=file,
        )


def iterate_pokemon_bases() -> Iterator[Tuple[int, int, int, int]]:
    cursor = get_connection().cursor()

    cursor.execute(
        """
SELECT name, form_id
FROM form_names
WHERE language_id='jp'
        """
    )
    form_names = dict(cursor.fetchall())
    form_names[None] = 0

    cursor.execute(
        """
SELECT name, pokemon_id
FROM pokemon_names
WHERE language_id='jp'
        """
    )
    pokemon_names = dict(cursor.fetchall())

    for (pokemon, form), base in bases.items():
        pokemon_id = pokemon_names[pokemon]
        form_id = form_names[form]
        for stat in Stat:
            yield pokemon_id, form_id, stat.value, base[stat]


def output_pokemon_names(file: TextIO) -> None:
    print(
        """\
CREATE TABLE pokemon_names
(
    pokemon_id INTEGER,
    language_id TEXT CHECK(language_id IN ('en', 'jp')),
    name TEXT UNIQUE NOT NULL,
    PRIMARY KEY(pokemon_id, language_id)
);

INSERT INTO pokemon_names
    (pokemon_id, language_id, name        )
VALUES""",
        file=file,
    )

    for (i, language, name), sep in put_sep(values()):
        name_repr = repr(name) + " " * (12 - get_width(repr(name)))
        print(f"    ({i:>10}, {language!r:<11}, {name_repr}){sep}", file=file)


def put_sep(iterable: Iterable[T]) -> Iterator[Tuple[T, str]]:
    sequence = tuple(iterable)
    for value in sequence[:-1]:
        yield value, ","
    yield sequence[-1], ";"


def values() -> Iterator[Tuple[int, str, str]]:
    names_en = dict(get_pokemon_name_en())
    names_jp = dict(get_pokemon_name_jp())
    keys = sorted(names_en.keys() | names_jp.keys())
    for key in keys:
        yield key, "en", names_en[key]
    for key in keys:
        yield key, "jp", names_jp[key]


def get_width(s: str) -> int:
    if len(s) == 0:
        return 0
    elif len(s) == 1:
        if re.match(r"['\"a-zA-Z]", s):
            return 1
        else:
            return 2
    else:
        return sum(map(get_width, s))


def get_pokemon_name_en() -> Iterator[Tuple[int, str]]:
    for i in [1, 2, 3]:
        uri = f"https://www.serebii.net/pokemon/gen{i}pokemon.shtml"
        with requests.get(uri) as response:
            element = lxml.html.fromstring(response.text)
            for tr in element.xpath(
                "//tr[../../table[@class='dextable'] and position() >= 3]"
            ):
                yield (
                    int(re.search(r"#(\d+)", tr[0].text).group(1)),
                    re.search(r"\S+", tr[2][0].text).group(0),
                )


def get_pokemon_name_jp() -> Iterator[Tuple[int, str]]:
    uri = "https://wiki.xn--rckteqa2e.com/wiki/ポケモン一覧_(第五世代まで)"
    with requests.get(uri) as response:
        element = lxml.html.fromstring(response.text)
        for tr in element.xpath(
            "//tr[../../../table[@class='bluetable c sortable']]"
        ):
            try:
                i = int(tr[0].text.strip())
                if 386 < i:
                    break
            except (AttributeError, ValueError):
                continue
            yield i, tr[1][0].text.strip()


if __name__ == "__main__":
    main()
