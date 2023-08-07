import bootstrap.database
import pathlib
import typing


HERE = pathlib.Path(__file__).parent.absolute()


def build(_: typing.Any) -> None:
    bootstrap.database.create(
        HERE / "pokemon_gen3/database/pokemon.db", overwrite=True
    )


if __name__ == "__main__":
    build({})
