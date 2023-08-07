import enum
from typing import Any, TYPE_CHECKING, TypeVar, overload


from ._types import (
    Enhancement,
    StatID,
)
from . import database

if TYPE_CHECKING:
    from numpy.typing import NDArray, NBitBase

    T_bit = TypeVar("T_bit", bound=NBitBase)

try:
    import numpy

    NUMPY_IMPORT_ERROR = None
except (ModuleNotFoundError, ImportError) as e:
    NUMPY_IMPORT_ERROR = e


def __numpy_enabled() -> bool:
    return NUMPY_IMPORT_ERROR is None


@overload
def __where(condition: bool, x: int, y: int) -> int:
    ...


@overload
def __where(
    condition: "NDArray[numpy.bool_]",
    x: "NDArray[numpy.integer[T_bit]]",
    y: "NDArray[numpy.integer[T_bit]]",
) -> "NDArray[numpy.integer[T_bit]]":
    ...


def __where(condition: Any, x: Any, y: Any) -> Any:
    if __numpy_enabled() and (
        isinstance(condition, numpy.ndarray)
        or isinstance(x, numpy.ndarray)
        or isinstance(y, numpy.ndarray)
    ):
        return numpy.where(condition, x, y)
    else:
        return x if condition else y


class Stat(int, enum.Enum):
    HP, Atk, Def, SpA, SpD, Spe = h, a, b, c, d, s = 0, 1, 2, 3, 4, 5

    value: StatID

    @property
    def name_en(self) -> str:
        return database.stat.name_en_by_id(self.value)

    @property
    def name_jp(self) -> str:
        return database.stat.name_jp_by_id(self.value)


@overload
def calcurate_stat(
    stat: Stat,
    base: int,
    individual: int,
    effort: int,
    level: int,
    enhancement: Enhancement,
) -> int:
    ...


@overload
def calcurate_stat(
    stat: "NDArray[numpy.integer[T_bit]]",
    base: "NDArray[numpy.integer[T_bit]]",
    individual: "NDArray[numpy.integer[T_bit]]",
    effort: "NDArray[numpy.integer[T_bit]]",
    level: "NDArray[numpy.integer[T_bit]]",
    enhancement: "NDArray[numpy.integer[T_bit]]",
) -> "NDArray[numpy.integer[T_bit]]":
    ...


def calcurate_stat(
    stat: Any,
    base: Any,
    individual: Any,
    effort: Any,
    level: Any,
    enhancement: Any,
) -> Any:
    if_h = stat == Stat.h
    return (
        (
            (base * 2 + individual + effort // 4) * level // 100
            + __where(if_h, level + 10, 5)
        )
        * (10 + __where(if_h, 0, enhancement))
        // 10
    )
