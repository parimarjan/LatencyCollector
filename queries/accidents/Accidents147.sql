SELECT AVG("oseba"."vozniski_staz_MM" + "nesreca"."upravna_enota") as agg_0, AVG("upravna_enota"."id_upravna_enota" + "oseba"."drzavljanstvo") as agg_1 FROM "oseba" LEFT OUTER JOIN "upravna_enota" ON "oseba"."upravna_enota" = "upravna_enota"."id_upravna_enota" LEFT OUTER JOIN "nesreca" ON "oseba"."id_nesreca" = "nesreca"."id_nesreca"  WHERE "upravna_enota"."ime_upravna_enota" NOT LIKE '%L%jubljana%' AND "oseba"."starost" IS NOT NULL