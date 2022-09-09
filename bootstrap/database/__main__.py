import lxml.html
import re
import requests
from typing import Iterator, Tuple


def main() -> None:
    names_en = dict(get_pokemon_name_en())
    names_jp = dict(get_pokemon_name_jp())

    keys = sorted(names_en.keys() | names_jp.keys())
    for key in keys:
        name_en = names_en[key]
        print(key, "en", name_en)
    for key in keys:
        name_jp = names_jp[key]
        print(key, "jp", name_jp)


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

        for tr in element.xpath("//table"):
            print(tr.attrib["class"])
        yield from []


if __name__ == "__main__":
    main()
