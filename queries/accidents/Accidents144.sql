SELECT AVG("upravna_enota"."id_upravna_enota") as agg_0, SUM("upravna_enota"."st_prebivalcev" + "upravna_enota"."povrsina") as agg_1, MAX("upravna_enota"."id_upravna_enota" + "upravna_enota"."st_prebivalcev") as agg_2 FROM "upravna_enota"  WHERE "upravna_enota"."ime_upravna_enota" IN ('Radlje ob Dravi', 'Ormož', 'Brežice', 'Ajdovščina', 'Piran', 'Postojna') AND "upravna_enota"."povrsina" != 502 AND "upravna_enota"."id_upravna_enota" != 5528 AND "upravna_enota"."st_prebivalcev" BETWEEN 665 AND 5153