SELECT MIN("oseba"."spol" + "upravna_enota"."id_upravna_enota") as agg_0, COUNT(*) as agg_1 FROM "oseba" LEFT OUTER JOIN "nesreca" ON "oseba"."id_nesreca" = "nesreca"."id_nesreca" LEFT OUTER JOIN "upravna_enota" ON "nesreca"."upravna_enota" = "upravna_enota"."id_upravna_enota"  WHERE "nesreca"."tekst_odsek_ali_ulica" LIKE '%CE%STA%'