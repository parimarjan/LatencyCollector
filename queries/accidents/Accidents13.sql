SELECT AVG("upravna_enota"."st_prebivalcev") as agg_0, COUNT(*) as agg_1, MAX("upravna_enota"."st_prebivalcev" + "upravna_enota"."id_upravna_enota") as agg_2 FROM "upravna_enota"  WHERE "upravna_enota"."st_prebivalcev" >= 228004 AND "upravna_enota"."id_upravna_enota" BETWEEN 5516 AND 5568 AND "upravna_enota"."ime_upravna_enota" LIKE '%pr%i%' AND "upravna_enota"."povrsina" != 885 AND "upravna_enota"."ime_upravna_enota" NOT LIKE '%o%b%'