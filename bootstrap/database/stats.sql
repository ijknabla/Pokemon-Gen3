
CREATE TABLE stats
(
    id INTEGER PRIMARY KEY,
    name_en TEXT UNIQUE NOT NULL,
    name_jp TEXT UNIQUE NOT NULL
);

INSERT INTO stats
    (id, name_en  , name_jp  )
VALUES
    ( 0, 'HP'     , 'HP'     ),
    ( 1, 'Attack' , 'こうげき'),
    ( 2, 'Defence', 'ぼうぎょ'),
    ( 3, 'Sp. Atk', 'とくこう'),
    ( 4, 'Sp. Def', 'とくぼう'),
    ( 5, 'Speed'  , 'すばやさ');
