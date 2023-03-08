SELECT SUM("nesreca"."x") as agg_0, SUM("oseba"."starost") as agg_1, MAX("upravna_enota"."id_upravna_enota") as agg_2 FROM "oseba" LEFT OUTER JOIN "upravna_enota" ON "oseba"."upravna_enota" = "upravna_enota"."id_upravna_enota" LEFT OUTER JOIN "nesreca" ON "upravna_enota"."id_upravna_enota" = "nesreca"."upravna_enota"  WHERE "oseba"."vrsta_udelezenca" = 'MK'