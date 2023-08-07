import enum

from typing import (
    Any,
    DefaultDict,
    Iterator,
    Tuple,
)

from .database import nature as nature_database
from .database import pokemon as pokemon_database
from .database import stat as stat_database

from ._types import (
    NatureID,
    StatID,
    StatsTuple,
)


class Pokemon:
    __id: int

    def __init__(self, id_: int):
        self.__id = id_

    def __eq__(self, other: Any) -> bool:
        if isinstance(other, Pokemon):
            return self.__id == other.__id
        return False

    def __hash__(self) -> int:
        return hash(self.__id)

    @property
    def id(self) -> int:
        return self.__id

    @property
    def name_jp(self) -> str:
        return pokemon_database.name_jp_by_id(self.__id)

    @property
    def bases(self) -> StatsTuple:
        return pokemon_database.bases_by_id(self.__id)

    @classmethod
    def from_name_jp(
        cls,
        name: str,
    ) -> "Pokemon":
        return cls(pokemon_database.id_by_name_jp(name))


class Stat(enum.Enum):
    h = 1
    a = enum.auto()
    b = enum.auto()
    c = enum.auto()
    d = enum.auto()
    s = enum.auto()

    value: StatID

    def __index__(self) -> int:
        return self.value - 1

    @property
    def name_en(self) -> str:
        return stat_database.name_en_by_id(self.value)

    @property
    def name_jp(self) -> str:
        return stat_database.name_jp_by_id(self.value)


class _NatureMeta(type):
    def __iter__(cls) -> Iterator["Nature"]:
        for id_ in nature_database.ids():
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
    def name_jp(self) -> str:
        return nature_database.name_jp_by_id(self.__id)

    @property
    def stat_correction(self) -> Tuple[int, ...]:
        stats = [Stat.a, Stat.b, Stat.s, Stat.c, Stat.d]
        div, mod = divmod(self.__id, len(stats))
        increase, decrease = stats[div], stats[mod]

        correction_map = DefaultDict[Stat, int](lambda: 0)
        correction_map[increase] += 1
        correction_map[decrease] -= 1

        return tuple(correction_map[stat] for stat in Stat)

    @classmethod
    def from_name_jp(
        cls,
        name: str,
    ) -> "Nature":
        return cls(nature_database.id_by_name_jp(name))


def calcurate_stats(
    nature: Nature,
    level: int,
    bases: StatsTuple,
    individuals: StatsTuple,
    efforts: StatsTuple,
) -> Any:
    return tuple(
        calcurate_stat(
            stat,
            level,
            base,
            individual,
            effort,
            correction,
        )
        for (stat, base, individual, effort, correction,) in zip(
            Stat,
            bases,
            individuals,
            efforts,
            nature.stat_correction,
        )
    )


def calcurate_stat(
    stat: Stat,
    level: int,
    base: int,
    individual: int,
    effort: int,
    correction: int,
) -> Any:
    if stat is Stat.h:
        return calcurate_h_stat(
            level,
            base,
            individual,
            effort,
            correction,
        )
    else:
        return calcurate_abcds_stat(
            level,
            base,
            individual,
            effort,
            correction,
        )


def calcurate_h_stat(
    level: int,
    base: int,
    individual: int,
    effort: int,
    _: int,
) -> Any:
    return (base * 2 + individual + effort // 4) * level // 100 + level + 10


def calcurate_abcds_stat(
    level: int,
    base: int,
    individual: int,
    effort: int,
    correction: int,
) -> Any:
    return (
        ((base * 2 + individual + effort // 4) * level // 100 + 5)
        * (10 + correction)
        // 10
    )
