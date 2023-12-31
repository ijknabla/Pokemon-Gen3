from pokemon_gen3 import Pokemon, Stat
import pytest
from typing import Iterator


@pytest.fixture
def mew() -> Iterator[Pokemon]:
    yield Pokemon.from_name_jp("ミュウ")


def test_mew_base(mew: Pokemon) -> None:
    assert len(mew.base) == len(Stat)
    assert all(base == 100 for base in mew.base)


def test_mew_name(mew: Pokemon) -> None:
    assert mew.name_jp == "ミュウ"
