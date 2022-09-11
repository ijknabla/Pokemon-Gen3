__all__ = (
    "FormID",
    "Name",
    "NatureID",
    "PokemonID",
    "StatID",
)

from typing import NewType

from .._types import Name

FormID = NewType("FormID", int)
NatureID = NewType("NatureID", int)
PokemonID = NewType("PokemonID", int)
StatID = NewType("StatID", int)
