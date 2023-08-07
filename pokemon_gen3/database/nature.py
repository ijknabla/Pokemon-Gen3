from typing import Iterator, cast

from . import __connection

from .._types import NatureID


def ids() -> Iterator[NatureID]:
    cursor = __connection.cursor()
    cursor.execute(
        """
SELECT id FROM natures ORDER BY id
        """
    )
    for (id_,) in cursor.fetchall():
        yield id_


def id_by_name_jp(
    name: str,
) -> NatureID:
    cursor = __connection.cursor()
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
    cursor = __connection.cursor()
    cursor.execute(
        """
SELECT name_jp FROM natures WHERE id=:id
        """,
        {"id": id_},
    )
    (value,) = cursor.fetchone()
    return cast(str, value)
