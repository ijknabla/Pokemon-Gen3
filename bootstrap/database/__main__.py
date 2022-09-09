import lxml.html
import json
import re
import requests
import sys
from typing import Iterator, Tuple



def main() -> None:
    json.dump(list(get_pokemon_name_en()), sys.stdout)


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


if __name__ == "__main__":
    main()
