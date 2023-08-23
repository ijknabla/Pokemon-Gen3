from typing import Iterator, cast

from .._types import NatureID
from ._connection import get_connection


def ids() -> Iterator[NatureID]:
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


def id_by_name_jp(
    name: str,
) -> NatureID:
    cursor = get_connection().cursor()
    cursor.execute(
        """
SELECT id FROM natures WHERE name_jp=:name
        """,
        {"name": name},
    )
    (value,) = cursor.fetchone()
    return cast(NatureID, value)


def name_jp_by_id(
    id_: NatureID,
) -> str:
    cursor = get_connection().cursor()
    cursor.execute(
        """
SELECT name_jp FROM natures WHERE id=:id
        """,
        {"id": id_},
    )
    (value,) = cursor.fetchone()
    return cast(str, value)
