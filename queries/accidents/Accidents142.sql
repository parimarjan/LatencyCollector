SELECT MIN("nesreca"."y" + "oseba"."vozniski_staz_MM") as agg_0, MAX("nesreca"."id_nesreca") as agg_1 FROM "nesreca" LEFT OUTER JOIN "oseba" ON "nesreca"."id_nesreca" = "oseba"."id_nesreca" LEFT OUTER JOIN "upravna_enota" ON "nesreca"."upravna_enota" = "upravna_enota"."id_upravna_enota"  WHERE "nesreca"."vzrok_nesreca" LIKE '%S%V%'