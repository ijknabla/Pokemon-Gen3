from __future__ import annotations

from collections.abc import Generator
from typing import cast

from .._types import Language, NatureID
from ._connection import get_connection


def ids() -> Generator[NatureID, None, None]:
    cursor = get_connection().cursor()
    cursor.execute(
        """
SELECT DISTINCT nature_id
FROM nature_names
ORDER BY nature_id
        """
    )
    for (id_,) in cursor.fetchall():
        yield id_


def id_by_name(name: str) -> NatureID:
    cursor = get_connection().cursor()
    cursor.execute(
        """
SELECT nature_id
FROM nature_names
WHERE name=:name
        """,
        {"name": name},
    )
    (value,) = cursor.fetchone()
    return cast(NatureID, value)


def name_by_id(id: NatureID, language: Language) -> str:
    cursor = get_connection().cursor()
    cursor.execute(
        """
SELECT name
FROM nature_names
WHERE nature_id=:id AND language_id=:language_name
        """,
        {"id": id, "language_name": language.name},
    )
    (value,) = cursor.fetchone()
    return cast(str, value)
