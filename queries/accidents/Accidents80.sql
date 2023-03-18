SELECT SUM("nesreca"."x_wgs84" + "oseba"."id_nesreca") as agg_0, MAX("oseba"."upravna_enota" + "oseba"."id_nesreca") as agg_1, MIN("oseba"."vozniski_staz_LL" + "oseba"."vozniski_staz_MM") as agg_2 FROM "nesreca" LEFT OUTER JOIN "oseba" ON "nesreca"."id_nesreca" = "oseba"."id_nesreca"  WHERE "nesreca"."vzrok_nesreca" NOT LIKE '%P%R%' AND "nesreca"."opis_prizorisce" IN ('Z', 'K', 'R', 'C', 'Ž', 'P')