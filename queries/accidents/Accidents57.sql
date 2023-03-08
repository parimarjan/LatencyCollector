SELECT COUNT(*) as agg_0, MIN("oseba"."vozniski_staz_MM" + "oseba"."id_nesreca") as agg_1 FROM "oseba" LEFT OUTER JOIN "upravna_enota" ON "oseba"."upravna_enota" = "upravna_enota"."id_upravna_enota" LEFT OUTER JOIN "nesreca" ON "upravna_enota"."id_upravna_enota" = "nesreca"."upravna_enota"  WHERE "oseba"."vrsta_udelezenca" IN ('OA', 'PT', 'KM', 'PE', 'AV', 'KV', 'TV', 'MK') AND "oseba"."upravna_enota" = 5539