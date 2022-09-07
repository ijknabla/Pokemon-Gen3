__all__ = ("Enhancement", "Name")

from typing import Literal, NamedTuple


Enhancement = Literal[-1, 0, 1]


class Name(NamedTuple):
    jp: str
    en: str
