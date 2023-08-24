from typing import Iterator

import pytest

from pokemon_gen3 import Pokemon, Stat
from pokemon_gen3._types import Language, PokemonID
from pokemon_gen3.database.pokemon import id_by_name, name_by_id


@pytest.mark.parametrize("id", range(1, 386 + 1))
@pytest.mark.parametrize("language", Language)
def test_pokemon_name(id: PokemonID, language: Language):
    assert id_by_name(name_by_id(id, language)) == id


@pytest.fixture
def mew() -> Iterator[Pokemon]:
    yield Pokemon.from_name_jp("ミュウ")


def test_mew_base(mew: Pokemon) -> None:
    assert len(mew.base) == len(Stat)
    assert all(base == 100 for base in mew.base)


def test_mew_name(mew: Pokemon) -> None:
    assert mew.name_ja == "ミュウ"
