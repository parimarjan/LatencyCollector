SELECT MAX("oseba"."id_nesreca") as agg_0, MAX("oseba"."strokovni_pregled") as agg_1 FROM "upravna_enota" LEFT OUTER JOIN "oseba" ON "upravna_enota"."id_upravna_enota" = "oseba"."upravna_enota"  WHERE "upravna_enota"."ime_upravna_enota" NOT LIKE '%Bistrica%' AND "upravna_enota"."povrsina" != 441 AND "oseba"."upravna_enota" BETWEEN 5501 AND 5537 AND "upravna_enota"."ime_upravna_enota" NOT LIKE '%o%b%'