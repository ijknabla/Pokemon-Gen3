from typing import (
    NewType,
    Sequence,
    Tuple,
)


Stat = int
Stats = Sequence[Stat]
StatsTuple = Tuple[Stat, Stat, Stat, Stat, Stat, Stat]


StatID = NewType("StatID", int)
NatureID = NewType("NatureID", int)
