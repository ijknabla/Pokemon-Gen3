import functools
from typing import cast

from .._types import Language, StatID
from ._connection import get_connection


def name_by_id(id: StatID, language: Language) -> str:
    cursor = get_connection().cursor()
    cursor.execute(
        """
SELECT name
FROM stat_names
WHERE stat_id=:id AND language_id=:language_name
        """,
        {"id": id, "language_name": language.name},
    )
    (value,) = cursor.fetchone()
    return cast(str, value)


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
