__all__ = (
    "NatureID",
    "PokemonID",
    "StatID",
)


from typing import NewType

NatureID = NewType("NatureID", int)
PokemonID = NewType("PokemonID", int)
StatID = NewType("StatID", int)
