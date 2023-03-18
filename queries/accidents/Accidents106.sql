SELECT COUNT(*) as agg_0, SUM("nesreca"."x" + "nesreca"."id_nesreca") as agg_1 FROM "upravna_enota" LEFT OUTER JOIN "nesreca" ON "upravna_enota"."id_upravna_enota" = "nesreca"."upravna_enota"  WHERE ("upravna_enota"."ime_upravna_enota" IN ('Ormož', 'Brežice', 'Novo Mesto', 'Postojna', 'Ptuj', 'Ajdovščina', 'Radovljica') OR "upravna_enota"."ime_upravna_enota" = 'Jesenice') AND "nesreca"."y_wgs84" >= 45.82869573742859