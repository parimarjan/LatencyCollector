SELECT MAX("nesreca"."id_nesreca") as agg_0, MAX("oseba"."alkotest") as agg_1, MAX("nesreca"."x_wgs84") as agg_2 FROM "upravna_enota" LEFT OUTER JOIN "nesreca" ON "upravna_enota"."id_upravna_enota" = "nesreca"."upravna_enota" LEFT OUTER JOIN "oseba" ON "upravna_enota"."id_upravna_enota" = "oseba"."upravna_enota"  WHERE "upravna_enota"."povrsina" <= 248 AND "oseba"."alkotest_d" IN ('H', 'N', 'E') AND "upravna_enota"."ime_upravna_enota" IN ('Ravne na Koroškem', 'Novo Mesto', 'Radovljica', 'Ptuj', 'Brežice', 'Ajdovščina') AND "nesreca"."oznaka_cesta_ali_naselje" LIKE '%18035%'