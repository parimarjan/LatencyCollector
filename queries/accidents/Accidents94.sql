SELECT COUNT(*) as agg_0 FROM "nesreca" LEFT OUTER JOIN "upravna_enota" ON "nesreca"."upravna_enota" = "upravna_enota"."id_upravna_enota" LEFT OUTER JOIN "oseba" ON "upravna_enota"."id_upravna_enota" = "oseba"."upravna_enota"  WHERE "upravna_enota"."ime_upravna_enota" NOT LIKE '%L%jubljana%' AND "nesreca"."naselje_ali_izven" IN ('N') AND "oseba"."starost_d" = 'I'