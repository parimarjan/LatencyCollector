SELECT SUM("oseba"."id_nesreca" + "oseba"."spol") as agg_0, MAX("upravna_enota"."st_prebivalcev") as agg_1, MAX("oseba"."spol") as agg_2 FROM "oseba" LEFT OUTER JOIN "upravna_enota" ON "oseba"."upravna_enota" = "upravna_enota"."id_upravna_enota"  WHERE "oseba"."strokovni_pregled_d" = 'D'