import atexit
import enum
import sqlite3
import pkg_resources


class Tables(enum.Enum):
    pokemons = enum.auto()
    stats = enum.auto()
    natures = enum.auto()


def resource_string(fileName: str) -> str:
    return pkg_resources.resource_string(
        __name__,
        fileName,
    ).decode("UTF-8")


def setup(connection: sqlite3.Connection) -> sqlite3.Connection:
    cursor = connection.cursor()
    for table in Tables:
        cursor.executescript(resource_string(f"{table.name}.sql"))
    connection.commit()

    return connection


__connection = setup(sqlite3.connect(":memory:"))
atexit.register(__connection.close)
