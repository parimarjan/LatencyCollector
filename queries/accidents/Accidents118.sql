SELECT SUM("oseba"."spol" + "nesreca"."upravna_enota") as agg_0, MIN("upravna_enota"."povrsina" + "oseba"."id_nesreca") as agg_1 FROM "oseba" LEFT OUTER JOIN "nesreca" ON "oseba"."id_nesreca" = "nesreca"."id_nesreca" LEFT OUTER JOIN "upravna_enota" ON "oseba"."upravna_enota" = "upravna_enota"."id_upravna_enota"  WHERE "upravna_enota"."st_prebivalcev" >= 188593 AND "oseba"."vrsta_udelezenca" = 'PE' AND "upravna_enota"."ime_upravna_enota" NOT LIKE '%o%b%'