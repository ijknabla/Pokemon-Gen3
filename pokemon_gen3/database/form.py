from typing import Optional
from ._connection import get_connection
from ._types import FormID, PokemonID


def resolve_name(pokemonId: PokemonID, name: str) -> Optional[FormID]:
    cursor = get_connection().cursor()
    cursor.execute(
        """
SELECT form_id
FROM (
    SELECT form_id
    FROM forms
    WHERE pokemon_id=?
)
WHERE name=?
        """,
        (pokemonId, name)
    )

    try:
        id, = cursor.fetchone()
    except Exception:
        return None

    return FormID(id)
