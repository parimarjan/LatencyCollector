SELECT AVG("oseba"."upravna_enota") as agg_0, MAX("nesreca"."stacionazna_ali_hisna_st") as agg_1, SUM("oseba"."drzavljanstvo") as agg_2 FROM "upravna_enota" LEFT OUTER JOIN "nesreca" ON "upravna_enota"."id_upravna_enota" = "nesreca"."upravna_enota" LEFT OUTER JOIN "oseba" ON "nesreca"."id_nesreca" = "oseba"."id_nesreca"  WHERE "nesreca"."tekst_odsek_ali_ulica" NOT LIKE '%ULICA%' AND "nesreca"."klas_nesreca" != 'P' AND "oseba"."strokovni_pregled_d" = 'G'