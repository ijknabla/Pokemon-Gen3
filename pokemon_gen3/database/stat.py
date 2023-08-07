import functools
from typing import cast

from ._connection import get_connection
from .._types import StatID


@functools.lru_cache()
def name_en_by_id(id_: StatID) -> str:
    cursor = get_connection().cursor()
    cursor.execute(
        """
SELECT name_en FROM stats WHERE id=:id
        """,
        {
            "id": id_,
        },
    )
    (value,) = cursor.fetchone()
    return cast(str, value)


@functools.lru_cache()
def name_jp_by_id(id_: StatID) -> str:
    cursor = get_connection().cursor()
    cursor.execute(
        """
SELECT name_jp FROM stats WHERE id=:id
        """,
        {
            "id": id_,
        },
    )
    (value,) = cursor.fetchone()
    return cast(str, value)
