from typing import Iterator, Tuple, cast

from ._connection import get_connection
from .._types import PokemonID


def ids() -> Iterator[PokemonID]:
    cursor = get_connection().cursor()
    cursor.execute(
        """
SELECT id
FROM pokemons
ORDER BY id
        """
    )
    for (id_,) in cursor.fetchall():
        yield id_


def id_by_name_jp(
    name: str,
) -> PokemonID:
    cursor = get_connection().cursor()
    cursor.execute(
        """
SELECT id FROM pokemons WHERE name_jp=:name_jp
        """,
        {
            "name_jp": name,
        },
    )
    (value,) = cursor.fetchone()
    return cast(PokemonID, value)


def base_by_id(
    id_: PokemonID,
) -> Tuple[int, ...]:
    cursor = get_connection().cursor()
    cursor.execute(
        """
SELECT h_base, a_base, b_base, c_base, d_base, s_base
FROM pokemons WHERE id=:id
        """,
        {
            "id": id_,
        },
    )
    return cast(Tuple[int, ...], cursor.fetchone())


def name_jp_by_id(
    id_: PokemonID,
) -> str:
    cursor = get_connection().cursor()
    cursor.execute(
        """
SELECT name_jp
FROM pokemons WHERE id=:id
        """,
        {
            "id": id_,
        },
    )
    (value,) = cursor.fetchone()
    return cast(str, value)
