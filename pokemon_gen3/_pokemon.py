from .database._types import FormID, PokemonID
from functools import lru_cache
from typing import Optional


class Form:
    __id: FormID

    def __new__(cls, pokemonId: PokemonID, name: str) -> Optional["Form"]:
        ...

    @classmethod
    @lru_cache(None)
    def __from_id__(cls, id: FormID) -> Optional["Form"]:
        if id <= 0:
            return None

        self = super().__new__(cls)
        self.__id = id
        return self

    def __hash__(self) -> int:
        return hash(self.__id)


class Pokemon:
    __id: PokemonID
    __form: Optional[Form]

    @property
    def index(self) -> int:
        return self.__id

    @classmethod
    @lru_cache(None)
    def __from_id_and_form__(cls, id: PokemonID, form: Optional[Form]):
        self = super().__new__(cls)
        self.__id = id
        self.__form = form
        return self
