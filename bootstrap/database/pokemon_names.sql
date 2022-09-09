CREATE TABLE pokemon_names
(
    pokemon_id INTEGER,
    language_id TEXT CHECK(language_id IN ('en', 'jp')),
    name TEXT UNIQUE NOT NULL,
    PRIMARY KEY(pokemon_id, language_id)
);

INSERT INTO pokemon_names
    (pokemon_id, language_id, name        )
VALUES
    (         1, 'en'       , 'Bulbasaur' ),
    (         2, 'en'       , 'Ivysaur'   ),
    (         3, 'en'       , 'Venusaur'  ),
    (         4, 'en'       , 'Charmander'),
    (         5, 'en'       , 'Charmeleon'),
    (         6, 'en'       , 'Charizard' ),
    (         7, 'en'       , 'Squirtle'  ),
    (         8, 'en'       , 'Wartortle' ),
    (         9, 'en'       , 'Blastoise' ),
    (        10, 'en'       , 'Caterpie'  ),
    (        11, 'en'       , 'Metapod'   ),
    (        12, 'en'       , 'Butterfree'),
    (        13, 'en'       , 'Weedle'    ),
    (        14, 'en'       , 'Kakuna'    ),
    (        15, 'en'       , 'Beedrill'  ),
    (        16, 'en'       , 'Pidgey'    ),
    (        17, 'en'       , 'Pidgeotto' ),
    (        18, 'en'       , 'Pidgeot'   ),
    (        19, 'en'       , 'Rattata'   ),
    (        20, 'en'       , 'Raticate'  ),
    (        21, 'en'       , 'Spearow'   ),
    (        22, 'en'       , 'Fearow'    ),
    (        23, 'en'       , 'Ekans'     ),
    (        24, 'en'       , 'Arbok'     ),
    (        25, 'en'       , 'Pikachu'   ),
    (        26, 'en'       , 'Raichu'    ),
    (        27, 'en'       , 'Sandshrew' ),
    (        28, 'en'       , 'Sandslash' ),
    (        29, 'en'       , 'Nidoran♀' ),
    (        30, 'en'       , 'Nidorina'  ),
    (        31, 'en'       , 'Nidoqueen' ),
    (        32, 'en'       , 'Nidoran♂' ),
    (        33, 'en'       , 'Nidorino'  ),
    (        34, 'en'       , 'Nidoking'  ),
    (        35, 'en'       , 'Clefairy'  ),
    (        36, 'en'       , 'Clefable'  ),
    (        37, 'en'       , 'Vulpix'    ),
    (        38, 'en'       , 'Ninetales' ),
    (        39, 'en'       , 'Jigglypuff'),
    (        40, 'en'       , 'Wigglytuff'),
    (        41, 'en'       , 'Zubat'     ),
    (        42, 'en'       , 'Golbat'    ),
    (        43, 'en'       , 'Oddish'    ),
    (        44, 'en'       , 'Gloom'     ),
    (        45, 'en'       , 'Vileplume' ),
    (        46, 'en'       , 'Paras'     ),
    (        47, 'en'       , 'Parasect'  ),
    (        48, 'en'       , 'Venonat'   ),
    (        49, 'en'       , 'Venomoth'  ),
    (        50, 'en'       , 'Diglett'   ),
    (        51, 'en'       , 'Dugtrio'   ),
    (        52, 'en'       , 'Meowth'    ),
    (        53, 'en'       , 'Persian'   ),
    (        54, 'en'       , 'Psyduck'   ),
    (        55, 'en'       , 'Golduck'   ),
    (        56, 'en'       , 'Mankey'    ),
    (        57, 'en'       , 'Primeape'  ),
    (        58, 'en'       , 'Growlithe' ),
    (        59, 'en'       , 'Arcanine'  ),
    (        60, 'en'       , 'Poliwag'   ),
    (        61, 'en'       , 'Poliwhirl' ),
    (        62, 'en'       , 'Poliwrath' ),
    (        63, 'en'       , 'Abra'      ),
    (        64, 'en'       , 'Kadabra'   ),
    (        65, 'en'       , 'Alakazam'  ),
    (        66, 'en'       , 'Machop'    ),
    (        67, 'en'       , 'Machoke'   ),
    (        68, 'en'       , 'Machamp'   ),
    (        69, 'en'       , 'Bellsprout'),
    (        70, 'en'       , 'Weepinbell'),
    (        71, 'en'       , 'Victreebel'),
    (        72, 'en'       , 'Tentacool' ),
    (        73, 'en'       , 'Tentacruel'),
    (        74, 'en'       , 'Geodude'   ),
    (        75, 'en'       , 'Graveler'  ),
    (        76, 'en'       , 'Golem'     ),
    (        77, 'en'       , 'Ponyta'    ),
    (        78, 'en'       , 'Rapidash'  ),
    (        79, 'en'       , 'Slowpoke'  ),
    (        80, 'en'       , 'Slowbro'   ),
    (        81, 'en'       , 'Magnemite' ),
    (        82, 'en'       , 'Magneton'  ),
    (        83, 'en'       , "Farfetch'd"),
    (        84, 'en'       , 'Doduo'     ),
    (        85, 'en'       , 'Dodrio'    ),
    (        86, 'en'       , 'Seel'      ),
    (        87, 'en'       , 'Dewgong'   ),
    (        88, 'en'       , 'Grimer'    ),
    (        89, 'en'       , 'Muk'       ),
    (        90, 'en'       , 'Shellder'  ),
    (        91, 'en'       , 'Cloyster'  ),
    (        92, 'en'       , 'Gastly'    ),
    (        93, 'en'       , 'Haunter'   ),
    (        94, 'en'       , 'Gengar'    ),
    (        95, 'en'       , 'Onix'      ),
    (        96, 'en'       , 'Drowzee'   ),
    (        97, 'en'       , 'Hypno'     ),
    (        98, 'en'       , 'Krabby'    ),
    (        99, 'en'       , 'Kingler'   ),
    (       100, 'en'       , 'Voltorb'   ),
    (       101, 'en'       , 'Electrode' ),
    (       102, 'en'       , 'Exeggcute' ),
    (       103, 'en'       , 'Exeggutor' ),
    (       104, 'en'       , 'Cubone'    ),
    (       105, 'en'       , 'Marowak'   ),
    (       106, 'en'       , 'Hitmonlee' ),
    (       107, 'en'       , 'Hitmonchan'),
    (       108, 'en'       , 'Lickitung' ),
    (       109, 'en'       , 'Koffing'   ),
    (       110, 'en'       , 'Weezing'   ),
    (       111, 'en'       , 'Rhyhorn'   ),
    (       112, 'en'       , 'Rhydon'    ),
    (       113, 'en'       , 'Chansey'   ),
    (       114, 'en'       , 'Tangela'   ),
    (       115, 'en'       , 'Kangaskhan'),
    (       116, 'en'       , 'Horsea'    ),
    (       117, 'en'       , 'Seadra'    ),
    (       118, 'en'       , 'Goldeen'   ),
    (       119, 'en'       , 'Seaking'   ),
    (       120, 'en'       , 'Staryu'    ),
    (       121, 'en'       , 'Starmie'   ),
    (       122, 'en'       , 'Mr.'      ),
    (       123, 'en'       , 'Scyther'   ),
    (       124, 'en'       , 'Jynx'      ),
    (       125, 'en'       , 'Electabuzz'),
    (       126, 'en'       , 'Magmar'    ),
    (       127, 'en'       , 'Pinsir'    ),
    (       128, 'en'       , 'Tauros'    ),
    (       129, 'en'       , 'Magikarp'  ),
    (       130, 'en'       , 'Gyarados'  ),
    (       131, 'en'       , 'Lapras'    ),
    (       132, 'en'       , 'Ditto'     ),
    (       133, 'en'       , 'Eevee'     ),
    (       134, 'en'       , 'Vaporeon'  ),
    (       135, 'en'       , 'Jolteon'   ),
    (       136, 'en'       , 'Flareon'   ),
    (       137, 'en'       , 'Porygon'   ),
    (       138, 'en'       , 'Omanyte'   ),
    (       139, 'en'       , 'Omastar'   ),
    (       140, 'en'       , 'Kabuto'    ),
    (       141, 'en'       , 'Kabutops'  ),
    (       142, 'en'       , 'Aerodactyl'),
    (       143, 'en'       , 'Snorlax'   ),
    (       144, 'en'       , 'Articuno'  ),
    (       145, 'en'       , 'Zapdos'    ),
    (       146, 'en'       , 'Moltres'   ),
    (       147, 'en'       , 'Dratini'   ),
    (       148, 'en'       , 'Dragonair' ),
    (       149, 'en'       , 'Dragonite' ),
    (       150, 'en'       , 'Mewtwo'    ),
    (       151, 'en'       , 'Mew'       ),
    (       152, 'en'       , 'Chikorita' ),
    (       153, 'en'       , 'Bayleef'   ),
    (       154, 'en'       , 'Meganium'  ),
    (       155, 'en'       , 'Cyndaquil' ),
    (       156, 'en'       , 'Quilava'   ),
    (       157, 'en'       , 'Typhlosion'),
    (       158, 'en'       , 'Totodile'  ),
    (       159, 'en'       , 'Croconaw'  ),
    (       160, 'en'       , 'Feraligatr'),
    (       161, 'en'       , 'Sentret'   ),
    (       162, 'en'       , 'Furret'    ),
    (       163, 'en'       , 'Hoothoot'  ),
    (       164, 'en'       , 'Noctowl'   ),
    (       165, 'en'       , 'Ledyba'    ),
    (       166, 'en'       , 'Ledian'    ),
    (       167, 'en'       , 'Spinarak'  ),
    (       168, 'en'       , 'Ariados'   ),
    (       169, 'en'       , 'Crobat'    ),
    (       170, 'en'       , 'Chinchou'  ),
    (       171, 'en'       , 'Lanturn'   ),
    (       172, 'en'       , 'Pichu'     ),
    (       173, 'en'       , 'Cleffa'    ),
    (       174, 'en'       , 'Igglybuff' ),
    (       175, 'en'       , 'Togepi'    ),
    (       176, 'en'       , 'Togetic'   ),
    (       177, 'en'       , 'Natu'      ),
    (       178, 'en'       , 'Xatu'      ),
    (       179, 'en'       , 'Mareep'    ),
    (       180, 'en'       , 'Flaaffy'   ),
    (       181, 'en'       , 'Ampharos'  ),
    (       182, 'en'       , 'Bellossom' ),
    (       183, 'en'       , 'Marill'    ),
    (       184, 'en'       , 'Azumarill' ),
    (       185, 'en'       , 'Sudowoodo' ),
    (       186, 'en'       , 'Politoed'  ),
    (       187, 'en'       , 'Hoppip'    ),
    (       188, 'en'       , 'Skiploom'  ),
    (       189, 'en'       , 'Jumpluff'  ),
    (       190, 'en'       , 'Aipom'     ),
    (       191, 'en'       , 'Sunkern'   ),
    (       192, 'en'       , 'Sunflora'  ),
    (       193, 'en'       , 'Yanma'     ),
    (       194, 'en'       , 'Wooper'    ),
    (       195, 'en'       , 'Quagsire'  ),
    (       196, 'en'       , 'Espeon'    ),
    (       197, 'en'       , 'Umbreon'   ),
    (       198, 'en'       , 'Murkrow'   ),
    (       199, 'en'       , 'Slowking'  ),
    (       200, 'en'       , 'Misdreavus'),
    (       201, 'en'       , 'Unown'     ),
    (       202, 'en'       , 'Wobbuffet' ),
    (       203, 'en'       , 'Girafarig' ),
    (       204, 'en'       , 'Pineco'    ),
    (       205, 'en'       , 'Forretress'),
    (       206, 'en'       , 'Dunsparce' ),
    (       207, 'en'       , 'Gligar'    ),
    (       208, 'en'       , 'Steelix'   ),
    (       209, 'en'       , 'Snubbull'  ),
    (       210, 'en'       , 'Granbull'  ),
    (       211, 'en'       , 'Qwilfish'  ),
    (       212, 'en'       , 'Scizor'    ),
    (       213, 'en'       , 'Shuckle'   ),
    (       214, 'en'       , 'Heracross' ),
    (       215, 'en'       , 'Sneasel'   ),
    (       216, 'en'       , 'Teddiursa' ),
    (       217, 'en'       , 'Ursaring'  ),
    (       218, 'en'       , 'Slugma'    ),
    (       219, 'en'       , 'Magcargo'  ),
    (       220, 'en'       , 'Swinub'    ),
    (       221, 'en'       , 'Piloswine' ),
    (       222, 'en'       , 'Corsola'   ),
    (       223, 'en'       , 'Remoraid'  ),
    (       224, 'en'       , 'Octillery' ),
    (       225, 'en'       , 'Delibird'  ),
    (       226, 'en'       , 'Mantine'   ),
    (       227, 'en'       , 'Skarmory'  ),
    (       228, 'en'       , 'Houndour'  ),
    (       229, 'en'       , 'Houndoom'  ),
    (       230, 'en'       , 'Kingdra'   ),
    (       231, 'en'       , 'Phanpy'    ),
    (       232, 'en'       , 'Donphan'   ),
    (       233, 'en'       , 'Porygon2' ),
    (       234, 'en'       , 'Stantler'  ),
    (       235, 'en'       , 'Smeargle'  ),
    (       236, 'en'       , 'Tyrogue'   ),
    (       237, 'en'       , 'Hitmontop' ),
    (       238, 'en'       , 'Smoochum'  ),
    (       239, 'en'       , 'Elekid'    ),
    (       240, 'en'       , 'Magby'     ),
    (       241, 'en'       , 'Miltank'   ),
    (       242, 'en'       , 'Blissey'   ),
    (       243, 'en'       , 'Raikou'    ),
    (       244, 'en'       , 'Entei'     ),
    (       245, 'en'       , 'Suicune'   ),
    (       246, 'en'       , 'Larvitar'  ),
    (       247, 'en'       , 'Pupitar'   ),
    (       248, 'en'       , 'Tyranitar' ),
    (       249, 'en'       , 'Lugia'     ),
    (       250, 'en'       , 'Ho-Oh'    ),
    (       251, 'en'       , 'Celebi'    ),
    (       252, 'en'       , 'Treecko'   ),
    (       253, 'en'       , 'Grovyle'   ),
    (       254, 'en'       , 'Sceptile'  ),
    (       255, 'en'       , 'Torchic'   ),
    (       256, 'en'       , 'Combusken' ),
    (       257, 'en'       , 'Blaziken'  ),
    (       258, 'en'       , 'Mudkip'    ),
    (       259, 'en'       , 'Marshtomp' ),
    (       260, 'en'       , 'Swampert'  ),
    (       261, 'en'       , 'Poochyena' ),
    (       262, 'en'       , 'Mightyena' ),
    (       263, 'en'       , 'Zigzagoon' ),
    (       264, 'en'       , 'Linoone'   ),
    (       265, 'en'       , 'Wurmple'   ),
    (       266, 'en'       , 'Silcoon'   ),
    (       267, 'en'       , 'Beautifly' ),
    (       268, 'en'       , 'Cascoon'   ),
    (       269, 'en'       , 'Dustox'    ),
    (       270, 'en'       , 'Lotad'     ),
    (       271, 'en'       , 'Lombre'    ),
    (       272, 'en'       , 'Ludicolo'  ),
    (       273, 'en'       , 'Seedot'    ),
    (       274, 'en'       , 'Nuzleaf'   ),
    (       275, 'en'       , 'Shiftry'   ),
    (       276, 'en'       , 'Taillow'   ),
    (       277, 'en'       , 'Swellow'   ),
    (       278, 'en'       , 'Wingull'   ),
    (       279, 'en'       , 'Pelipper'  ),
    (       280, 'en'       , 'Ralts'     ),
    (       281, 'en'       , 'Kirlia'    ),
    (       282, 'en'       , 'Gardevoir' ),
    (       283, 'en'       , 'Surskit'   ),
    (       284, 'en'       , 'Masquerain'),
    (       285, 'en'       , 'Shroomish' ),
    (       286, 'en'       , 'Breloom'   ),
    (       287, 'en'       , 'Slakoth'   ),
    (       288, 'en'       , 'Vigoroth'  ),
    (       289, 'en'       , 'Slaking'   ),
    (       290, 'en'       , 'Nincada'   ),
    (       291, 'en'       , 'Ninjask'   ),
    (       292, 'en'       , 'Shedinja'  ),
    (       293, 'en'       , 'Whismur'   ),
    (       294, 'en'       , 'Loudred'   ),
    (       295, 'en'       , 'Exploud'   ),
    (       296, 'en'       , 'Makuhita'  ),
    (       297, 'en'       , 'Hariyama'  ),
    (       298, 'en'       , 'Azurill'   ),
    (       299, 'en'       , 'Nosepass'  ),
    (       300, 'en'       , 'Skitty'    ),
    (       301, 'en'       , 'Delcatty'  ),
    (       302, 'en'       , 'Sableye'   ),
    (       303, 'en'       , 'Mawile'    ),
    (       304, 'en'       , 'Aron'      ),
    (       305, 'en'       , 'Lairon'    ),
    (       306, 'en'       , 'Aggron'    ),
    (       307, 'en'       , 'Meditite'  ),
    (       308, 'en'       , 'Medicham'  ),
    (       309, 'en'       , 'Electrike' ),
    (       310, 'en'       , 'Manectric' ),
    (       311, 'en'       , 'Plusle'    ),
    (       312, 'en'       , 'Minun'     ),
    (       313, 'en'       , 'Volbeat'   ),
    (       314, 'en'       , 'Illumise'  ),
    (       315, 'en'       , 'Roselia'   ),
    (       316, 'en'       , 'Gulpin'    ),
    (       317, 'en'       , 'Swalot'    ),
    (       318, 'en'       , 'Carvanha'  ),
    (       319, 'en'       , 'Sharpedo'  ),
    (       320, 'en'       , 'Wailmer'   ),
    (       321, 'en'       , 'Wailord'   ),
    (       322, 'en'       , 'Numel'     ),
    (       323, 'en'       , 'Camerupt'  ),
    (       324, 'en'       , 'Torkoal'   ),
    (       325, 'en'       , 'Spoink'    ),
    (       326, 'en'       , 'Grumpig'   ),
    (       327, 'en'       , 'Spinda'    ),
    (       328, 'en'       , 'Trapinch'  ),
    (       329, 'en'       , 'Vibrava'   ),
    (       330, 'en'       , 'Flygon'    ),
    (       331, 'en'       , 'Cacnea'    ),
    (       332, 'en'       , 'Cacturne'  ),
    (       333, 'en'       , 'Swablu'    ),
    (       334, 'en'       , 'Altaria'   ),
    (       335, 'en'       , 'Zangoose'  ),
    (       336, 'en'       , 'Seviper'   ),
    (       337, 'en'       , 'Lunatone'  ),
    (       338, 'en'       , 'Solrock'   ),
    (       339, 'en'       , 'Barboach'  ),
    (       340, 'en'       , 'Whiscash'  ),
    (       341, 'en'       , 'Corphish'  ),
    (       342, 'en'       , 'Crawdaunt' ),
    (       343, 'en'       , 'Baltoy'    ),
    (       344, 'en'       , 'Claydol'   ),
    (       345, 'en'       , 'Lileep'    ),
    (       346, 'en'       , 'Cradily'   ),
    (       347, 'en'       , 'Anorith'   ),
    (       348, 'en'       , 'Armaldo'   ),
    (       349, 'en'       , 'Feebas'    ),
    (       350, 'en'       , 'Milotic'   ),
    (       351, 'en'       , 'Castform'  ),
    (       352, 'en'       , 'Kecleon'   ),
    (       353, 'en'       , 'Shuppet'   ),
    (       354, 'en'       , 'Banette'   ),
    (       355, 'en'       , 'Duskull'   ),
    (       356, 'en'       , 'Dusclops'  ),
    (       357, 'en'       , 'Tropius'   ),
    (       358, 'en'       , 'Chimecho'  ),
    (       359, 'en'       , 'Absol'     ),
    (       360, 'en'       , 'Wynaut'    ),
    (       361, 'en'       , 'Snorunt'   ),
    (       362, 'en'       , 'Glalie'    ),
    (       363, 'en'       , 'Spheal'    ),
    (       364, 'en'       , 'Sealeo'    ),
    (       365, 'en'       , 'Walrein'   ),
    (       366, 'en'       , 'Clamperl'  ),
    (       367, 'en'       , 'Huntail'   ),
    (       368, 'en'       , 'Gorebyss'  ),
    (       369, 'en'       , 'Relicanth' ),
    (       370, 'en'       , 'Luvdisc'   ),
    (       371, 'en'       , 'Bagon'     ),
    (       372, 'en'       , 'Shelgon'   ),
    (       373, 'en'       , 'Salamence' ),
    (       374, 'en'       , 'Beldum'    ),
    (       375, 'en'       , 'Metang'    ),
    (       376, 'en'       , 'Metagross' ),
    (       377, 'en'       , 'Regirock'  ),
    (       378, 'en'       , 'Regice'    ),
    (       379, 'en'       , 'Registeel' ),
    (       380, 'en'       , 'Latias'    ),
    (       381, 'en'       , 'Latios'    ),
    (       382, 'en'       , 'Kyogre'    ),
    (       383, 'en'       , 'Groudon'   ),
    (       384, 'en'       , 'Rayquaza'  ),
    (       385, 'en'       , 'Jirachi'   ),
    (       386, 'en'       , 'Deoxys'    ),
    (         1, 'jp'       , 'フシギダネ'),
    (         2, 'jp'       , 'フシギソウ'),
    (         3, 'jp'       , 'フシギバナ'),
    (         4, 'jp'       , 'ヒトカゲ'  ),
    (         5, 'jp'       , 'リザード'  ),
    (         6, 'jp'       , 'リザードン'),
    (         7, 'jp'       , 'ゼニガメ'  ),
    (         8, 'jp'       , 'カメール'  ),
    (         9, 'jp'       , 'カメックス'),
    (        10, 'jp'       , 'キャタピー'),
    (        11, 'jp'       , 'トランセル'),
    (        12, 'jp'       , 'バタフリー'),
    (        13, 'jp'       , 'ビードル'  ),
    (        14, 'jp'       , 'コクーン'  ),
    (        15, 'jp'       , 'スピアー'  ),
    (        16, 'jp'       , 'ポッポ'    ),
    (        17, 'jp'       , 'ピジョン'  ),
    (        18, 'jp'       , 'ピジョット'),
    (        19, 'jp'       , 'コラッタ'  ),
    (        20, 'jp'       , 'ラッタ'    ),
    (        21, 'jp'       , 'オニスズメ'),
    (        22, 'jp'       , 'オニドリル'),
    (        23, 'jp'       , 'アーボ'    ),
    (        24, 'jp'       , 'アーボック'),
    (        25, 'jp'       , 'ピカチュウ'),
    (        26, 'jp'       , 'ライチュウ'),
    (        27, 'jp'       , 'サンド'    ),
    (        28, 'jp'       , 'サンドパン'),
    (        29, 'jp'       , 'ニドラン♀'),
    (        30, 'jp'       , 'ニドリーナ'),
    (        31, 'jp'       , 'ニドクイン'),
    (        32, 'jp'       , 'ニドラン♂'),
    (        33, 'jp'       , 'ニドリーノ'),
    (        34, 'jp'       , 'ニドキング'),
    (        35, 'jp'       , 'ピッピ'    ),
    (        36, 'jp'       , 'ピクシー'  ),
    (        37, 'jp'       , 'ロコン'    ),
    (        38, 'jp'       , 'キュウコン'),
    (        39, 'jp'       , 'プリン'    ),
    (        40, 'jp'       , 'プクリン'  ),
    (        41, 'jp'       , 'ズバット'  ),
    (        42, 'jp'       , 'ゴルバット'),
    (        43, 'jp'       , 'ナゾノクサ'),
    (        44, 'jp'       , 'クサイハナ'),
    (        45, 'jp'       , 'ラフレシア'),
    (        46, 'jp'       , 'パラス'    ),
    (        47, 'jp'       , 'パラセクト'),
    (        48, 'jp'       , 'コンパン'  ),
    (        49, 'jp'       , 'モルフォン'),
    (        50, 'jp'       , 'ディグダ'  ),
    (        51, 'jp'       , 'ダグトリオ'),
    (        52, 'jp'       , 'ニャース'  ),
    (        53, 'jp'       , 'ペルシアン'),
    (        54, 'jp'       , 'コダック'  ),
    (        55, 'jp'       , 'ゴルダック'),
    (        56, 'jp'       , 'マンキー'  ),
    (        57, 'jp'       , 'オコリザル'),
    (        58, 'jp'       , 'ガーディ'  ),
    (        59, 'jp'       , 'ウインディ'),
    (        60, 'jp'       , 'ニョロモ'  ),
    (        61, 'jp'       , 'ニョロゾ'  ),
    (        62, 'jp'       , 'ニョロボン'),
    (        63, 'jp'       , 'ケーシィ'  ),
    (        64, 'jp'       , 'ユンゲラー'),
    (        65, 'jp'       , 'フーディン'),
    (        66, 'jp'       , 'ワンリキー'),
    (        67, 'jp'       , 'ゴーリキー'),
    (        68, 'jp'       , 'カイリキー'),
    (        69, 'jp'       , 'マダツボミ'),
    (        70, 'jp'       , 'ウツドン'  ),
    (        71, 'jp'       , 'ウツボット'),
    (        72, 'jp'       , 'メノクラゲ'),
    (        73, 'jp'       , 'ドククラゲ'),
    (        74, 'jp'       , 'イシツブテ'),
    (        75, 'jp'       , 'ゴローン'  ),
    (        76, 'jp'       , 'ゴローニャ'),
    (        77, 'jp'       , 'ポニータ'  ),
    (        78, 'jp'       , 'ギャロップ'),
    (        79, 'jp'       , 'ヤドン'    ),
    (        80, 'jp'       , 'ヤドラン'  ),
    (        81, 'jp'       , 'コイル'    ),
    (        82, 'jp'       , 'レアコイル'),
    (        83, 'jp'       , 'カモネギ'  ),
    (        84, 'jp'       , 'ドードー'  ),
    (        85, 'jp'       , 'ドードリオ'),
    (        86, 'jp'       , 'パウワウ'  ),
    (        87, 'jp'       , 'ジュゴン'  ),
    (        88, 'jp'       , 'ベトベター'),
    (        89, 'jp'       , 'ベトベトン'),
    (        90, 'jp'       , 'シェルダー'),
    (        91, 'jp'       , 'パルシェン'),
    (        92, 'jp'       , 'ゴース'    ),
    (        93, 'jp'       , 'ゴースト'  ),
    (        94, 'jp'       , 'ゲンガー'  ),
    (        95, 'jp'       , 'イワーク'  ),
    (        96, 'jp'       , 'スリープ'  ),
    (        97, 'jp'       , 'スリーパー'),
    (        98, 'jp'       , 'クラブ'    ),
    (        99, 'jp'       , 'キングラー'),
    (       100, 'jp'       , 'ビリリダマ'),
    (       101, 'jp'       , 'マルマイン'),
    (       102, 'jp'       , 'タマタマ'  ),
    (       103, 'jp'       , 'ナッシー'  ),
    (       104, 'jp'       , 'カラカラ'  ),
    (       105, 'jp'       , 'ガラガラ'  ),
    (       106, 'jp'       , 'サワムラー'),
    (       107, 'jp'       , 'エビワラー'),
    (       108, 'jp'       , 'ベロリンガ'),
    (       109, 'jp'       , 'ドガース'  ),
    (       110, 'jp'       , 'マタドガス'),
    (       111, 'jp'       , 'サイホーン'),
    (       112, 'jp'       , 'サイドン'  ),
    (       113, 'jp'       , 'ラッキー'  ),
    (       114, 'jp'       , 'モンジャラ'),
    (       115, 'jp'       , 'ガルーラ'  ),
    (       116, 'jp'       , 'タッツー'  ),
    (       117, 'jp'       , 'シードラ'  ),
    (       118, 'jp'       , 'トサキント'),
    (       119, 'jp'       , 'アズマオウ'),
    (       120, 'jp'       , 'ヒトデマン'),
    (       121, 'jp'       , 'スターミー'),
    (       122, 'jp'       , 'バリヤード'),
    (       123, 'jp'       , 'ストライク'),
    (       124, 'jp'       , 'ルージュラ'),
    (       125, 'jp'       , 'エレブー'  ),
    (       126, 'jp'       , 'ブーバー'  ),
    (       127, 'jp'       , 'カイロス'  ),
    (       128, 'jp'       , 'ケンタロス'),
    (       129, 'jp'       , 'コイキング'),
    (       130, 'jp'       , 'ギャラドス'),
    (       131, 'jp'       , 'ラプラス'  ),
    (       132, 'jp'       , 'メタモン'  ),
    (       133, 'jp'       , 'イーブイ'  ),
    (       134, 'jp'       , 'シャワーズ'),
    (       135, 'jp'       , 'サンダース'),
    (       136, 'jp'       , 'ブースター'),
    (       137, 'jp'       , 'ポリゴン'  ),
    (       138, 'jp'       , 'オムナイト'),
    (       139, 'jp'       , 'オムスター'),
    (       140, 'jp'       , 'カブト'    ),
    (       141, 'jp'       , 'カブトプス'),
    (       142, 'jp'       , 'プテラ'    ),
    (       143, 'jp'       , 'カビゴン'  ),
    (       144, 'jp'       , 'フリーザー'),
    (       145, 'jp'       , 'サンダー'  ),
    (       146, 'jp'       , 'ファイヤー'),
    (       147, 'jp'       , 'ミニリュウ'),
    (       148, 'jp'       , 'ハクリュー'),
    (       149, 'jp'       , 'カイリュー'),
    (       150, 'jp'       , 'ミュウツー'),
    (       151, 'jp'       , 'ミュウ'    ),
    (       152, 'jp'       , 'チコリータ'),
    (       153, 'jp'       , 'ベイリーフ'),
    (       154, 'jp'       , 'メガニウム'),
    (       155, 'jp'       , 'ヒノアラシ'),
    (       156, 'jp'       , 'マグマラシ'),
    (       157, 'jp'       , 'バクフーン'),
    (       158, 'jp'       , 'ワニノコ'  ),
    (       159, 'jp'       , 'アリゲイツ'),
    (       160, 'jp'       , 'オーダイル'),
    (       161, 'jp'       , 'オタチ'    ),
    (       162, 'jp'       , 'オオタチ'  ),
    (       163, 'jp'       , 'ホーホー'  ),
    (       164, 'jp'       , 'ヨルノズク'),
    (       165, 'jp'       , 'レディバ'  ),
    (       166, 'jp'       , 'レディアン'),
    (       167, 'jp'       , 'イトマル'  ),
    (       168, 'jp'       , 'アリアドス'),
    (       169, 'jp'       , 'クロバット'),
    (       170, 'jp'       , 'チョンチー'),
    (       171, 'jp'       , 'ランターン'),
    (       172, 'jp'       , 'ピチュー'  ),
    (       173, 'jp'       , 'ピィ'      ),
    (       174, 'jp'       , 'ププリン'  ),
    (       175, 'jp'       , 'トゲピー'  ),
    (       176, 'jp'       , 'トゲチック'),
    (       177, 'jp'       , 'ネイティ'  ),
    (       178, 'jp'       , 'ネイティオ'),
    (       179, 'jp'       , 'メリープ'  ),
    (       180, 'jp'       , 'モココ'    ),
    (       181, 'jp'       , 'デンリュウ'),
    (       182, 'jp'       , 'キレイハナ'),
    (       183, 'jp'       , 'マリル'    ),
    (       184, 'jp'       , 'マリルリ'  ),
    (       185, 'jp'       , 'ウソッキー'),
    (       186, 'jp'       , 'ニョロトノ'),
    (       187, 'jp'       , 'ハネッコ'  ),
    (       188, 'jp'       , 'ポポッコ'  ),
    (       189, 'jp'       , 'ワタッコ'  ),
    (       190, 'jp'       , 'エイパム'  ),
    (       191, 'jp'       , 'ヒマナッツ'),
    (       192, 'jp'       , 'キマワリ'  ),
    (       193, 'jp'       , 'ヤンヤンマ'),
    (       194, 'jp'       , 'ウパー'    ),
    (       195, 'jp'       , 'ヌオー'    ),
    (       196, 'jp'       , 'エーフィ'  ),
    (       197, 'jp'       , 'ブラッキー'),
    (       198, 'jp'       , 'ヤミカラス'),
    (       199, 'jp'       , 'ヤドキング'),
    (       200, 'jp'       , 'ムウマ'    ),
    (       201, 'jp'       , 'アンノーン'),
    (       202, 'jp'       , 'ソーナンス'),
    (       203, 'jp'       , 'キリンリキ'),
    (       204, 'jp'       , 'クヌギダマ'),
    (       205, 'jp'       , 'フォレトス'),
    (       206, 'jp'       , 'ノコッチ'  ),
    (       207, 'jp'       , 'グライガー'),
    (       208, 'jp'       , 'ハガネール'),
    (       209, 'jp'       , 'ブルー'    ),
    (       210, 'jp'       , 'グランブル'),
    (       211, 'jp'       , 'ハリーセン'),
    (       212, 'jp'       , 'ハッサム'  ),
    (       213, 'jp'       , 'ツボツボ'  ),
    (       214, 'jp'       , 'ヘラクロス'),
    (       215, 'jp'       , 'ニューラ'  ),
    (       216, 'jp'       , 'ヒメグマ'  ),
    (       217, 'jp'       , 'リングマ'  ),
    (       218, 'jp'       , 'マグマッグ'),
    (       219, 'jp'       , 'マグカルゴ'),
    (       220, 'jp'       , 'ウリムー'  ),
    (       221, 'jp'       , 'イノムー'  ),
    (       222, 'jp'       , 'サニーゴ'  ),
    (       223, 'jp'       , 'テッポウオ'),
    (       224, 'jp'       , 'オクタン'  ),
    (       225, 'jp'       , 'デリバード'),
    (       226, 'jp'       , 'マンタイン'),
    (       227, 'jp'       , 'エアームド'),
    (       228, 'jp'       , 'デルビル'  ),
    (       229, 'jp'       , 'ヘルガー'  ),
    (       230, 'jp'       , 'キングドラ'),
    (       231, 'jp'       , 'ゴマゾウ'  ),
    (       232, 'jp'       , 'ドンファン'),
    (       233, 'jp'       , 'ポリゴン2'),
    (       234, 'jp'       , 'オドシシ'  ),
    (       235, 'jp'       , 'ドーブル'  ),
    (       236, 'jp'       , 'バルキー'  ),
    (       237, 'jp'       , 'カポエラー'),
    (       238, 'jp'       , 'ムチュール'),
    (       239, 'jp'       , 'エレキッド'),
    (       240, 'jp'       , 'ブビィ'    ),
    (       241, 'jp'       , 'ミルタンク'),
    (       242, 'jp'       , 'ハピナス'  ),
    (       243, 'jp'       , 'ライコウ'  ),
    (       244, 'jp'       , 'エンテイ'  ),
    (       245, 'jp'       , 'スイクン'  ),
    (       246, 'jp'       , 'ヨーギラス'),
    (       247, 'jp'       , 'サナギラス'),
    (       248, 'jp'       , 'バンギラス'),
    (       249, 'jp'       , 'ルギア'    ),
    (       250, 'jp'       , 'ホウオウ'  ),
    (       251, 'jp'       , 'セレビィ'  ),
    (       252, 'jp'       , 'キモリ'    ),
    (       253, 'jp'       , 'ジュプトル'),
    (       254, 'jp'       , 'ジュカイン'),
    (       255, 'jp'       , 'アチャモ'  ),
    (       256, 'jp'       , 'ワカシャモ'),
    (       257, 'jp'       , 'バシャーモ'),
    (       258, 'jp'       , 'ミズゴロウ'),
    (       259, 'jp'       , 'ヌマクロー'),
    (       260, 'jp'       , 'ラグラージ'),
    (       261, 'jp'       , 'ポチエナ'  ),
    (       262, 'jp'       , 'グラエナ'  ),
    (       263, 'jp'       , 'ジグザグマ'),
    (       264, 'jp'       , 'マッスグマ'),
    (       265, 'jp'       , 'ケムッソ'  ),
    (       266, 'jp'       , 'カラサリス'),
    (       267, 'jp'       , 'アゲハント'),
    (       268, 'jp'       , 'マユルド'  ),
    (       269, 'jp'       , 'ドクケイル'),
    (       270, 'jp'       , 'ハスボー'  ),
    (       271, 'jp'       , 'ハスブレロ'),
    (       272, 'jp'       , 'ルンパッパ'),
    (       273, 'jp'       , 'タネボー'  ),
    (       274, 'jp'       , 'コノハナ'  ),
    (       275, 'jp'       , 'ダーテング'),
    (       276, 'jp'       , 'スバメ'    ),
    (       277, 'jp'       , 'オオスバメ'),
    (       278, 'jp'       , 'キャモメ'  ),
    (       279, 'jp'       , 'ペリッパー'),
    (       280, 'jp'       , 'ラルトス'  ),
    (       281, 'jp'       , 'キルリア'  ),
    (       282, 'jp'       , 'サーナイト'),
    (       283, 'jp'       , 'アメタマ'  ),
    (       284, 'jp'       , 'アメモース'),
    (       285, 'jp'       , 'キノココ'  ),
    (       286, 'jp'       , 'キノガッサ'),
    (       287, 'jp'       , 'ナマケロ'  ),
    (       288, 'jp'       , 'ヤルキモノ'),
    (       289, 'jp'       , 'ケッキング'),
    (       290, 'jp'       , 'ツチニン'  ),
    (       291, 'jp'       , 'テッカニン'),
    (       292, 'jp'       , 'ヌケニン'  ),
    (       293, 'jp'       , 'ゴニョニョ'),
    (       294, 'jp'       , 'ドゴーム'  ),
    (       295, 'jp'       , 'バクオング'),
    (       296, 'jp'       , 'マクノシタ'),
    (       297, 'jp'       , 'ハリテヤマ'),
    (       298, 'jp'       , 'ルリリ'    ),
    (       299, 'jp'       , 'ノズパス'  ),
    (       300, 'jp'       , 'エネコ'    ),
    (       301, 'jp'       , 'エネコロロ'),
    (       302, 'jp'       , 'ヤミラミ'  ),
    (       303, 'jp'       , 'クチート'  ),
    (       304, 'jp'       , 'ココドラ'  ),
    (       305, 'jp'       , 'コドラ'    ),
    (       306, 'jp'       , 'ボスゴドラ'),
    (       307, 'jp'       , 'アサナン'  ),
    (       308, 'jp'       , 'チャーレム'),
    (       309, 'jp'       , 'ラクライ'  ),
    (       310, 'jp'       , 'ライボルト'),
    (       311, 'jp'       , 'プラスル'  ),
    (       312, 'jp'       , 'マイナン'  ),
    (       313, 'jp'       , 'バルビート'),
    (       314, 'jp'       , 'イルミーゼ'),
    (       315, 'jp'       , 'ロゼリア'  ),
    (       316, 'jp'       , 'ゴクリン'  ),
    (       317, 'jp'       , 'マルノーム'),
    (       318, 'jp'       , 'キバニア'  ),
    (       319, 'jp'       , 'サメハダー'),
    (       320, 'jp'       , 'ホエルコ'  ),
    (       321, 'jp'       , 'ホエルオー'),
    (       322, 'jp'       , 'ドンメル'  ),
    (       323, 'jp'       , 'バクーダ'  ),
    (       324, 'jp'       , 'コータス'  ),
    (       325, 'jp'       , 'バネブー'  ),
    (       326, 'jp'       , 'ブーピッグ'),
    (       327, 'jp'       , 'パッチール'),
    (       328, 'jp'       , 'ナックラー'),
    (       329, 'jp'       , 'ビブラーバ'),
    (       330, 'jp'       , 'フライゴン'),
    (       331, 'jp'       , 'サボネア'  ),
    (       332, 'jp'       , 'ノクタス'  ),
    (       333, 'jp'       , 'チルット'  ),
    (       334, 'jp'       , 'チルタリス'),
    (       335, 'jp'       , 'ザングース'),
    (       336, 'jp'       , 'ハブネーク'),
    (       337, 'jp'       , 'ルナトーン'),
    (       338, 'jp'       , 'ソルロック'),
    (       339, 'jp'       , 'ドジョッチ'),
    (       340, 'jp'       , 'ナマズン'  ),
    (       341, 'jp'       , 'ヘイガニ'  ),
    (       342, 'jp'       , 'シザリガー'),
    (       343, 'jp'       , 'ヤジロン'  ),
    (       344, 'jp'       , 'ネンドール'),
    (       345, 'jp'       , 'リリーラ'  ),
    (       346, 'jp'       , 'ユレイドル'),
    (       347, 'jp'       , 'アノプス'  ),
    (       348, 'jp'       , 'アーマルド'),
    (       349, 'jp'       , 'ヒンバス'  ),
    (       350, 'jp'       , 'ミロカロス'),
    (       351, 'jp'       , 'ポワルン'  ),
    (       352, 'jp'       , 'カクレオン'),
    (       353, 'jp'       , 'カゲボウズ'),
    (       354, 'jp'       , 'ジュペッタ'),
    (       355, 'jp'       , 'ヨマワル'  ),
    (       356, 'jp'       , 'サマヨール'),
    (       357, 'jp'       , 'トロピウス'),
    (       358, 'jp'       , 'チリーン'  ),
    (       359, 'jp'       , 'アブソル'  ),
    (       360, 'jp'       , 'ソーナノ'  ),
    (       361, 'jp'       , 'ユキワラシ'),
    (       362, 'jp'       , 'オニゴーリ'),
    (       363, 'jp'       , 'タマザラシ'),
    (       364, 'jp'       , 'トドグラー'),
    (       365, 'jp'       , 'トドゼルガ'),
    (       366, 'jp'       , 'パールル'  ),
    (       367, 'jp'       , 'ハンテール'),
    (       368, 'jp'       , 'サクラビス'),
    (       369, 'jp'       , 'ジーランス'),
    (       370, 'jp'       , 'ラブカス'  ),
    (       371, 'jp'       , 'タツベイ'  ),
    (       372, 'jp'       , 'コモルー'  ),
    (       373, 'jp'       , 'ボーマンダ'),
    (       374, 'jp'       , 'ダンバル'  ),
    (       375, 'jp'       , 'メタング'  ),
    (       376, 'jp'       , 'メタグロス'),
    (       377, 'jp'       , 'レジロック'),
    (       378, 'jp'       , 'レジアイス'),
    (       379, 'jp'       , 'レジスチル'),
    (       380, 'jp'       , 'ラティアス'),
    (       381, 'jp'       , 'ラティオス'),
    (       382, 'jp'       , 'カイオーガ'),
    (       383, 'jp'       , 'グラードン'),
    (       384, 'jp'       , 'レックウザ'),
    (       385, 'jp'       , 'ジラーチ'  ),
    (       386, 'jp'       , 'デオキシス');
