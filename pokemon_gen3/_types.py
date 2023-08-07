__all__ = (
    "Enhancement",
    "NatureID",
    "PokemonID",
    "StatID",
)

from typing import (
    Literal,
    NewType,
)

Enhancement = Literal[-1, 0, 1]

NatureID = NewType("NatureID", int)
PokemonID = NewType("PokemonID", int)
StatID = NewType("StatID", int)
