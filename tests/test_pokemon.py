from pokemon_gen3 import Pokemon, Stat
from bootstrap.database.pokemon_bases import bases
import pytest
from typing import Iterator, Optional


@pytest.fixture
def mew() -> Iterator[Pokemon]:
    yield Pokemon.from_name_jp("ミュウ")


def test_mew_base(mew: Pokemon) -> None:
    assert len(mew.base) == len(Stat)
    assert all(base == 100 for base in mew.base)


def test_mew_name(mew: Pokemon) -> None:
    assert mew.name_jp == "ミュウ"


@pytest.mark.parametrize("name, form", bases.keys())
def test_base(
    name: str,
    form: Optional[str],
) -> None:
    if form is not None:
        return
    assert Pokemon.from_name_jp(name).base == bases[(name, form)]
