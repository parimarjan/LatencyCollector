SELECT AVG("oseba"."starost") as agg_0, SUM("nesreca"."upravna_enota" + "oseba"."strokovni_pregled") as agg_1, SUM("oseba"."id_nesreca") as agg_2 FROM "nesreca" LEFT OUTER JOIN "upravna_enota" ON "nesreca"."upravna_enota" = "upravna_enota"."id_upravna_enota" LEFT OUTER JOIN "oseba" ON "nesreca"."id_nesreca" = "oseba"."id_nesreca"  WHERE "oseba"."vrsta_udelezenca" NOT LIKE '%P%T%' AND "nesreca"."tip_nesreca" IN ('TO', 'BT', 'ÈT')