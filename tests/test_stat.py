import pytest

from pokemon_gen3 import Nature, Pokemon, calcurate_stats
from typing import Tuple


@pytest.mark.parametrize(
    "pokemon_name_jp, nature_name_jp, level, stats",
    [
        ("ミュウ", "がんばりや", 50, (160, 105, 105, 105, 105, 105)),
        ("ミュウ", "がんばりや", 100, (310, 205, 205, 205, 205, 205)),
        ("ミュウ", "さみしがり", 50, (160, 115, 94, 105, 105, 105)),
        ("ミュウ", "さみしがり", 100, (310, 225, 184, 205, 205, 205)),
    ],
)
def test_stats(
    pokemon_name_jp: str,
    nature_name_jp: str,
    level: int,
    stats: Tuple[int, int, int, int, int, int],
) -> None:
    pokemon = Pokemon.from_name_jp(pokemon_name_jp)
    nature = Nature.from_name_jp(nature_name_jp)
    assert stats == calcurate_stats(
        nature,
        level,
        pokemon.bases,
        (0, 0, 0, 0, 0, 0),
        (0, 0, 0, 0, 0, 0),
    )
