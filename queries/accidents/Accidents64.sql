SELECT MIN("oseba"."vozniski_staz_LL" + "oseba"."upravna_enota") as agg_0, MAX("nesreca"."x") as agg_1 FROM "oseba" LEFT OUTER JOIN "nesreca" ON "oseba"."id_nesreca" = "nesreca"."id_nesreca"  WHERE "nesreca"."vzrok_nesreca" LIKE '%H%I%'