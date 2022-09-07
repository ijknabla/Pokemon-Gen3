import pytest

from pokemon_gen3 import Nature, Stat
from typing import Tuple


names_jp = [
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


@pytest.mark.parametrize("nature", Nature)
def test_all(nature: Nature) -> None:
    assert Nature(nature) == nature
    assert Nature(nature=nature) == nature
    assert Nature(nature.name.jp) == nature
    assert Nature(name=nature.name.jp) == nature
    assert Nature(nature.name.en) == nature
    assert Nature(name=nature.name.en) == nature


def stat_updown(nature: Nature) -> Tuple[Stat, Stat]:
    stats = [Stat.a, Stat.b, Stat.s, Stat.c, Stat.d]
    div, mod = divmod(names_jp.index(nature.name.jp), 5)
    return stats[div], stats[mod]


@pytest.mark.parametrize("name_jp", names_jp)
def test_enhancement(name_jp: str) -> None:
    nature = Nature(name_jp)
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
