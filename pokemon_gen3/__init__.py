__all__ = "Nature", "Pokemon", "Stat", "calcurate_stat"

from . import database
from ._stat import Stat, calcurate_stat
from ._types import Enhancement, Name
from .database._types import NatureID, PokemonID

from typing import (
    Any,
    DefaultDict,
    Iterator,
    Tuple,
)


class _NatureMeta(type):
    def __iter__(cls) -> Iterator["Nature"]:
        for id_ in database.nature.ids():
            yield cls(id_)


class Nature(metaclass=_NatureMeta):
    __id: NatureID

    def __init__(self, id_: NatureID):
        self.__id = id_

    def __eq__(self, other: Any) -> bool:
        if isinstance(other, Nature):
            return self.__id == other.__id
        return False

    def __hash__(self) -> int:
        return hash(self.__id)

    @property
    def name(self) -> Name:
        return database.nature.name(self.__id)

    @property
    def name_jp(self) -> str:
        return database.nature.name_jp_by_id(self.__id)

    @property
    def enhancement(self) -> Tuple[Enhancement, ...]:
        stats = [Stat.a, Stat.b, Stat.s, Stat.c, Stat.d]
        div, mod = divmod(self.__id, len(stats))
        increase, decrease = stats[div], stats[mod]

        enhancement_map = DefaultDict[Stat, Enhancement](lambda: 0)
        enhancement_map[increase] += 1  # type: ignore
        enhancement_map[decrease] -= 1  # type: ignore

        return tuple(enhancement_map[stat] for stat in Stat)

    @classmethod
    def from_name_jp(
        cls,
        name: str,
    ) -> "Nature":
        return cls(database.nature.id_by_name_jp(name))


class _PokemonMeta(type):
    def __iter__(cls) -> Iterator["Pokemon"]:
        for id_ in database.pokemon.ids():
            yield cls(id_)


class Pokemon(metaclass=_PokemonMeta):
    __id: PokemonID

    def __init__(self, id_: PokemonID):
        self.__id = id_

    def __eq__(self, other: Any) -> bool:
        if isinstance(other, Pokemon):
            return self.__id == other.__id
        return False

    def __hash__(self) -> int:
        return hash(self.__id)

    @property
    def name_jp(self) -> str:
        return database.pokemon.name_jp_by_id(self.__id)

    @property
    def base(self) -> Tuple[int, ...]:
        return database.pokemon.base_by_id(self.__id)

    @classmethod
    def from_name_jp(
        cls,
        name: str,
    ) -> "Pokemon":
        return cls(database.pokemon.id_by_name_jp(name))
