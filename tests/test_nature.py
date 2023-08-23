from typing import Tuple

import pytest

from pokemon_gen3 import Nature, Stat

names_ja = [
    "がんばりや",
    "さみしがり",
    "ゆうかん",
    "いじっぱり",
    "やんちゃ",
    "ずぶとい",
    "すなお",
    "のんき",
    "わんぱく",
    "のうてんき",
    "おくびょう",
    "せっかち",
    "まじめ",
    "ようき",
    "むじゃき",
    "ひかえめ",
    "おっとり",
    "れいせい",
    "てれや",
    "うっかりや",
    "おだやか",
    "おとなしい",
    "なまいき",
    "しんちょう",
    "きまぐれ",
]


@pytest.mark.parametrize("name_ja", names_ja)
def test_all(name_ja: str) -> None:
    assert Nature.from_name(name_ja).name_ja == name_ja


def stat_updown(nature: Nature) -> Tuple[Stat, Stat]:
    stats = [Stat.a, Stat.b, Stat.s, Stat.c, Stat.d]
    div, mod = divmod(names_ja.index(nature.name_ja), 5)
    return stats[div], stats[mod]


@pytest.mark.parametrize("name_jp", names_ja)
def test_enhancement(name_jp: str) -> None:
    nature = Nature.from_name(name_jp)
    enhancement = nature.enhancement
    stat_up, stat_down = stat_updown(nature)

    assert len(enhancement) == len(Stat)

    if stat_up == stat_down:
        assert all(e == 0 for e in enhancement)
    else:
        for stat, e in zip(Stat, enhancement):
            if stat is stat_up:
                assert e == +1
            elif stat is stat_down:
                assert e == -1
            else:
                assert e == 0
