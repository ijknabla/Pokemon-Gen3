
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

CREATE TABLE stat_names
(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    stat_id NOT NULL,
    language_id TEXT NOT NULL,
    `name` TEXT NOT NULL,
    UNIQUE(stat_id, language_id)
);

INSERT INTO stat_names
    (stat_id, language_id, `name`)
VALUES
    (      0, 'ja'       , 'HP'),
    (      0, 'en'       , 'HP'),
    (      1, 'ja'       , 'こうげき'),
    (      1, 'en'       , 'Attack'),
    (      2, 'ja'       , 'ぼうぎょ'),
    (      2, 'en'       , 'Defence'),
    (      3, 'ja'       , 'とくこう'),
    (      3, 'en'       , 'Sp. Atk'),
    (      4, 'ja'       , 'とくぼう'),
    (      4, 'en'       , 'Sp. Def'),
    (      5, 'ja'       , 'すばやさ'),
    (      5, 'en'       , 'Speed');
