CREATE TABLE forms
(
    pokemon_id INTEGER,
    form_id INTEGER,
    PRIMARY KEY(pokemon_id, form_id)
);

INSERT INTO forms
    (pokemon_id, form_id)
VALUES
    (       351,       1),
    (       351,       2),
    (       351,       3),
    (       351,       4),
    (       386,       5),
    (       386,       6),
    (       386,       7),
    (       386,       8);
