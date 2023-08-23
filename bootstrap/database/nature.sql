
CREATE TABLE natures
(
    id INTEGER PRIMARY KEY,
    name_en TEXT UNIQUE NOT NULL,
    name_jp TEXT UNIQUE NOT NULL
);

INSERT INTO natures
    (id, name_en  , name_jp    )
VALUES
    ( 0, 'Hardly' , 'がんばりや'),
    ( 1, 'Lonely' , 'さみしがり'),
    ( 2, 'Brave'  , 'ゆうかん'  ),
    ( 3, 'Adamant', 'いじっぱり'),
    ( 4, 'Naughty', 'やんちゃ'  ),

    ( 5, 'Bold'   , 'ずぶとい'  ),
    ( 6, 'Docile' , 'すなお'    ),
    ( 7, 'Relaxed', 'のんき'    ),
    ( 8, 'Impish' , 'わんぱく'  ),
    ( 9, 'Lax'    , 'のうてんき'),

    (10, 'Timid'  , 'おくびょう'),
    (11, 'Hasty'  , 'せっかち'  ),
    (12, 'Serious', 'まじめ'    ),
    (13, 'Jolly'  , 'ようき'    ),
    (14, 'Naive'  , 'むじゃき'  ),

    (15, 'Modest' , 'ひかえめ'  ),
    (16, 'Mild'   , 'おっとり'  ),
    (17, 'Quiet'  , 'れいせい'  ),
    (18, 'Bashful', 'てれや'    ),
    (19, 'Rash'   , 'うっかりや'),

    (20, 'Calm'   , 'おだやか'  ),
    (21, 'Gentle' , 'おとなしい'),
    (22, 'Sassy'  , 'なまいき'  ),
    (23, 'Careful', 'しんちょう'),
    (24, 'Quirky' , 'きまぐれ'  );

CREATE TABLE nature_names
(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nature_id NOT NULL,
    language_id TEXT NOT NULL,
    `name` TEXT UNIQUE NOT NULL,
    UNIQUE(nature_id, language_id)
);

INSERT INTO nature_names
    (nature_id, language_id, `name`)
VALUES
    (        0, 'ja'       , 'がんばりや'),
    (        0, 'en'       , 'Hardly'),
    (        1, 'ja'       , 'さみしがり'),
    (        1, 'en'       , 'Lonely'),
    (        2, 'ja'       , 'ゆうかん'),
    (        2, 'en'       , 'Brave'),
    (        3, 'ja'       , 'いじっぱり'),
    (        3, 'en'       , 'Adamant'),
    (        4, 'ja'       , 'やんちゃ'),
    (        4, 'en'       , 'Naughty'),
    (        5, 'ja'       , 'ずぶとい'),
    (        5, 'en'       , 'Bold'),
    (        6, 'ja'       , 'すなお'),
    (        6, 'en'       , 'Docile'),
    (        7, 'ja'       , 'のんき'),
    (        7, 'en'       , 'Relaxed'),
    (        8, 'ja'       , 'わんぱく'),
    (        8, 'en'       , 'Impish'),
    (        9, 'ja'       , 'のうてんき'),
    (        9, 'en'       , 'Lax'),
    (       10, 'ja'       , 'おくびょう'),
    (       10, 'en'       , 'Timid'),
    (       11, 'ja'       , 'せっかち'),
    (       11, 'en'       , 'Hasty'),
    (       12, 'ja'       , 'まじめ'),
    (       12, 'en'       , 'Serious'),
    (       13, 'ja'       , 'ようき'),
    (       13, 'en'       , 'Jolly'),
    (       14, 'ja'       , 'むじゃき'),
    (       14, 'en'       , 'Naive'),
    (       15, 'ja'       , 'ひかえめ'),
    (       15, 'en'       , 'Modest'),
    (       16, 'ja'       , 'おっとり'),
    (       16, 'en'       , 'Mild'),
    (       17, 'ja'       , 'れいせい'),
    (       17, 'en'       , 'Quiet'),
    (       18, 'ja'       , 'てれや'),
    (       18, 'en'       , 'Bashful'),
    (       19, 'ja'       , 'うっかりや'),
    (       19, 'en'       , 'Rash'),
    (       20, 'ja'       , 'おだやか'),
    (       20, 'en'       , 'Calm'),
    (       21, 'ja'       , 'おとなしい'),
    (       21, 'en'       , 'Gentle'),
    (       22, 'ja'       , 'なまいき'),
    (       22, 'en'       , 'Sassy'),
    (       23, 'ja'       , 'しんちょう'),
    (       23, 'en'       , 'Careful'),
    (       24, 'ja'       , 'きまぐれ'),
    (       24, 'en'       , 'Quirky');
