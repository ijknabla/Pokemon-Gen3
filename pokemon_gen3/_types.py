__all__ = (
    "Enhancement",
    "NatureID",
    "PokemonID",
    "StatID",
)

from typing import NewType, TYPE_CHECKING

if TYPE_CHECKING:
    from typing_extensions import Literal

if TYPE_CHECKING:
    Enhancement = Literal[-1, 0, 1]
else:
    Enhancement = int

NatureID = NewType("NatureID", int)
PokemonID = NewType("PokemonID", int)
StatID = NewType("StatID", int)
