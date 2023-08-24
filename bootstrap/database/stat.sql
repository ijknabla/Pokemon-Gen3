
CREATE TABLE stat_names
(
    stat_id INTEGER NOT NULL,
    language_id TEXT NOT NULL,
    `name` TEXT NOT NULL,
    PRIMARY KEY(stat_id, language_id)
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
