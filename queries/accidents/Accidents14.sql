SELECT COUNT(*) as agg_0 FROM "upravna_enota" LEFT OUTER JOIN "oseba" ON "upravna_enota"."id_upravna_enota" = "oseba"."upravna_enota" LEFT OUTER JOIN "nesreca" ON "oseba"."id_nesreca" = "nesreca"."id_nesreca"  WHERE "upravna_enota"."ime_upravna_enota" = 'Slovenske Konjice' AND "nesreca"."katerija_cesta" = 'V'