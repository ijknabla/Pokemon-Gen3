
CREATE TABLE stats
(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name_en TEXT UNIQUE NOT NULL,
    name_jp TEXT UNIQUE NOT NULL
);

INSERT INTO stats
    (name_en  , name_jp  )
VALUES
    ('HP'     , 'HP'     ),
    ('Attack' , 'こうげき'),
    ('Defence', 'ぼうぎょ'),
    ('Sp. Atk', 'とくこう'),
    ('Sp. Def', 'とくぼう'),
    ('Speed'  , 'すばやさ');
