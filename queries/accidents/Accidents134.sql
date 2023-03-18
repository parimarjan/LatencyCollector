SELECT COUNT(*) as agg_0, SUM("oseba"."id_nesreca") as agg_1, MAX("oseba"."drzavljanstvo" + "nesreca"."upravna_enota") as agg_2 FROM "oseba" LEFT OUTER JOIN "upravna_enota" ON "oseba"."upravna_enota" = "upravna_enota"."id_upravna_enota" LEFT OUTER JOIN "nesreca" ON "oseba"."id_nesreca" = "nesreca"."id_nesreca"  WHERE "upravna_enota"."ime_upravna_enota" NOT LIKE '%Ljublja%na%' AND "nesreca"."opis_prizorisce" IN ('K', 'P', 'A', 'R', 'N') AND "nesreca"."stanje_vozisce" IN ('SL', 'OS', 'BL', 'SU', 'PN', 'MO')