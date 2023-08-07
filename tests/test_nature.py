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


@pytest.mark.parametrize("name_jp", names_jp)
def test_all(name_jp: str) -> None:
    assert Nature.from_name_jp(name_jp).name_jp == name_jp


def stat_updown(nature: Nature) -> Tuple[Stat, Stat]:
    stats = [Stat.a, Stat.b, Stat.s, Stat.c, Stat.d]
    div, mod = divmod(names_jp.index(nature.name_jp), 5)
    return stats[div], stats[mod]


@pytest.mark.parametrize("name_jp", names_jp)
def test_corrections(name_jp: str) -> None:
    nature = Nature.from_name_jp(name_jp)
    corrections = nature.stat_correction
    stat_up, stat_down = stat_updown(nature)

    assert len(corrections) == len(Stat)

    if stat_up == stat_down:
        assert all(correction == 0 for correction in corrections)
    else:
        for stat, correction in zip(Stat, corrections):
            if stat is stat_up:
                assert correction == +1
            elif stat is stat_down:
                assert correction == -1
            else:
                assert correction == 0
