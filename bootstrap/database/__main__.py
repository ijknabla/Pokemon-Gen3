import lxml.html
import re
import requests
from typing import Iterable, Iterator, Tuple, TypeVar


T = TypeVar("T")


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


def main() -> None:

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
VALUES"""
    )

    for (i, language, name), sep in put_sep(values()):
        print(f"({i}, {language!r}, {name!r}){sep}")


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
