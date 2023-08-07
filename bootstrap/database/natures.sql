
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
