SELECT MAX("oseba"."drzavljanstvo") as agg_0 FROM "oseba" LEFT OUTER JOIN "upravna_enota" ON "oseba"."upravna_enota" = "upravna_enota"."id_upravna_enota"  WHERE "upravna_enota"."povrsina" BETWEEN 266 AND 301