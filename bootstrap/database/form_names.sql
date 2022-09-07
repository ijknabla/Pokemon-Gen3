CREATE TABLE form_names
(
    form_id INTEGER,
    language_id TEXT CHECK(language_id IN ('en', 'jp')),
    name TEXT NOT NULL,
    PRIMARY KEY(form_id, language_id)
);

INSERT INTO form_names
    (form_id, language_id, name                  )
VALUES
    (      1, 'en'       , 'Normal Form'         ),
    (      2, 'en'       , 'Sunny Form'          ),
    (      3, 'en'       , 'Rainy Form'          ),
    (      4, 'en'       , 'Snowy Form'          ),
    (      5, 'en'       , 'Normal Form'         ),
    (      6, 'en'       , 'Attack Form'         ),
    (      7, 'en'       , 'Defense Form'        ),
    (      8, 'en'       , 'Speed Form'          ),
    (      1, 'jp'       , 'ポワルンのすがた'    ),
    (      2, 'jp'       , 'たいようのすがた'    ),
    (      3, 'jp'       , 'あまみずのすがた'    ),
    (      4, 'jp'       , 'ゆきぐものすがた'    ),
    (      5, 'jp'       , 'ノーマルフォルム'    ),
    (      6, 'jp'       , 'アタックフォルム'    ),
    (      7, 'jp'       , 'ディフェンスフォルム'),
    (      8, 'jp'       , 'スピードフォルム'    );
