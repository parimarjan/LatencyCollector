SELECT SUM("nesreca"."id_nesreca") as agg_0, SUM("oseba"."strokovni_pregled") as agg_1, MIN("nesreca"."stacionazna_ali_hisna_st") as agg_2 FROM "oseba" LEFT OUTER JOIN "upravna_enota" ON "oseba"."upravna_enota" = "upravna_enota"."id_upravna_enota" LEFT OUTER JOIN "nesreca" ON "upravna_enota"."id_upravna_enota" = "nesreca"."upravna_enota"  WHERE "upravna_enota"."ime_upravna_enota" LIKE '%Bistrica%'