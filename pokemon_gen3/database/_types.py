__all__ = (
    "Name",
    "NatureID",
    "PokemonID",
    "StatID",
)

from typing import NewType

from .._types import Name

NatureID = NewType("NatureID", int)
PokemonID = NewType("PokemonID", int)
StatID = NewType("StatID", int)
