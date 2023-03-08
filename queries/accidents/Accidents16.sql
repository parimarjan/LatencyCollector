SELECT MAX("upravna_enota"."st_prebivalcev") as agg_0, SUM("oseba"."strokovni_pregled" + "nesreca"."y_wgs84") as agg_1, COUNT(*) as agg_2 FROM "upravna_enota" LEFT OUTER JOIN "nesreca" ON "upravna_enota"."id_upravna_enota" = "nesreca"."upravna_enota" LEFT OUTER JOIN "oseba" ON "nesreca"."id_nesreca" = "oseba"."id_nesreca"  WHERE "upravna_enota"."ime_upravna_enota" IN ('Radovljica', 'Radlje ob Dravi', 'Ajdovščina')