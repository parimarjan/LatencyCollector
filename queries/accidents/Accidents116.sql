SELECT MIN("upravna_enota"."povrsina" + "upravna_enota"."id_upravna_enota") as agg_0, AVG("upravna_enota"."st_prebivalcev" + "upravna_enota"."povrsina") as agg_1, SUM("upravna_enota"."id_upravna_enota") as agg_2 FROM "upravna_enota"  WHERE "upravna_enota"."st_prebivalcev" != 70702 AND "upravna_enota"."ime_upravna_enota" NOT LIKE '%ob%' AND "upravna_enota"."id_upravna_enota" != 5585 AND "upravna_enota"."povrsina" != 18