SELECT COUNT(*) as agg_0, MAX("upravna_enota"."id_upravna_enota" + "upravna_enota"."povrsina") as agg_1, SUM("upravna_enota"."st_prebivalcev" + "upravna_enota"."povrsina") as agg_2 FROM "upravna_enota"  WHERE "upravna_enota"."povrsina" BETWEEN 342 AND 484 AND "upravna_enota"."ime_upravna_enota" IN ('Ravne na Koroškem') AND "upravna_enota"."st_prebivalcev" <= 16675