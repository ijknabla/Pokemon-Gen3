__all__ = (
    "Enhancement",
    "Language",
    "NatureID",
    "PokemonID",
    "StatID",
)

import enum
from typing import TYPE_CHECKING, NewType

if TYPE_CHECKING:
    from typing_extensions import Literal

if TYPE_CHECKING:
    Enhancement = Literal[-1, 0, 1]
else:
    Enhancement = int


class Language(enum.Enum):
    ja, en = enum.auto(), enum.auto()

    Japanese = 日本語 = ja
    English = en


NatureID = NewType("NatureID", int)
PokemonID = NewType("PokemonID", int)
StatID = NewType("StatID", int)
