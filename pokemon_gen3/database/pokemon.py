from typing import cast

from . import __connection

from .._types import StatsTuple


def id_by_name_jp(
    name: str,
) -> int:
    cursor = __connection.cursor()
    cursor.execute(
        """
SELECT id FROM pokemons WHERE name_jp=:name_jp
        """,
        {
            "name_jp": name,
        },
    )
    (value,) = cursor.fetchone()
    return cast(int, value)


def bases_by_id(
    id_: int,
) -> StatsTuple:
    cursor = __connection.cursor()
    cursor.execute(
        """
SELECT h_base, a_base, b_base, c_base, d_base, s_base
FROM pokemons WHERE id=:id
        """,
        {
            "id": id_,
        },
    )
    return cast(StatsTuple, cursor.fetchone())


def name_jp_by_id(
    id_: int,
) -> str:
    cursor = __connection.cursor()
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
