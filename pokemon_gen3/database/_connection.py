from functools import lru_cache
import sqlite3
import pkg_resources
from ..utils import atexit_context


@lru_cache(None)
def get_connection() -> sqlite3.Connection:
    return atexit_context(
        sqlite3.connect(
            pkg_resources.resource_filename(__name__, "pokemon.db")
        )
    )
