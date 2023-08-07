from numpy import array, uint16
from pokemon_gen3 import Nature, Pokemon, Stat, calcurate_stat
import pytest
from typing import Tuple


testcases = [
    ("ミュウ", "がんばりや", 50, (160, 105, 105, 105, 105, 105)),
    ("ミュウ", "がんばりや", 100, (310, 205, 205, 205, 205, 205)),
    ("ミュウ", "さみしがり", 50, (160, 115, 94, 105, 105, 105)),
    ("ミュウ", "さみしがり", 100, (310, 225, 184, 205, 205, 205)),
]


@pytest.mark.parametrize(
    "pokemon_name_jp, nature_name_jp, level, value", testcases
)
def test_each(
    pokemon_name_jp: str,
    nature_name_jp: str,
    level: int,
    value: Tuple[int, int, int, int, int, int],
) -> None:
    pokemon = Pokemon.from_name_jp(pokemon_name_jp)
    nature = Nature(nature_name_jp)
    for stat in Stat:
        assert value[stat] == calcurate_stat(
            stat=stat,
            base=pokemon.base[stat],
            individual=0,
            effort=0,
            level=level,
            enhancement=nature.enhancement[stat],
        )


def test_numpy() -> None:
    stat = array(Stat, dtype=uint16)[None, :]
    pokemon_name_jp, nature_name_jp, level, value = zip(*testcases)
    base = array(
        [Pokemon.from_name_jp(name).base for name in pokemon_name_jp],
        dtype=uint16,
    )
    enhancement = array(
        [Nature(name).enhancement for name in nature_name_jp],
        dtype=uint16,
    )
    total = calcurate_stat(
        stat=stat,
        base=base,
        individual=array(0, dtype=uint16),
        effort=array(0, dtype=uint16),
        level=array(level, dtype=uint16)[:, None],
        enhancement=enhancement,
    )

    for i, v in enumerate(value):
        assert (total[i] == v).all()
