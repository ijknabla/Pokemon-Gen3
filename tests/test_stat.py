import pytest

from itertools import combinations, zip_longest
from pokemon_gen3 import Stat


def test_identity() -> None:
    assert Stat.h is Stat.HP  # type: ignore
    assert Stat.a is Stat.Atk
    assert Stat.b is Stat.Def
    assert Stat.c is Stat.SpA
    assert Stat.d is Stat.SpD
    assert Stat.s is Stat.Spe
    for stat1, stat2 in zip(Stat, Stat):
        assert stat1 is stat2
    for stat1, stat2 in combinations(Stat, 2):
        assert stat1 is not stat2


def test_order() -> None:
    for stat1, stat2 in zip_longest(
        Stat,
        [Stat.h, Stat.a, Stat.b, Stat.c, Stat.d, Stat.s],
        fillvalue=None,
    ):
        assert stat1 is stat2


@pytest.mark.parametrize("stat", Stat)
def test_index(stat: Stat) -> None:
    assert stat is list(Stat)[stat]


@pytest.mark.parametrize("stat", Stat)
def test_name_jp(stat: Stat) -> None:
    names = {
        Stat.h: "HP",
        Stat.a: "こうげき",
        Stat.b: "ぼうぎょ",
        Stat.c: "とくこう",
        Stat.d: "とくぼう",
        Stat.s: "すばやさ",
    }
    assert stat.name_jp == names[stat]
