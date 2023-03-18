SELECT MAX("oseba"."spol" + "upravna_enota"."povrsina") as agg_0, AVG("upravna_enota"."id_upravna_enota" + "oseba"."alkotest") as agg_1, MAX("oseba"."drzavljanstvo" + "oseba"."vozniski_staz_LL") as agg_2 FROM "nesreca" LEFT OUTER JOIN "oseba" ON "nesreca"."id_nesreca" = "oseba"."id_nesreca" LEFT OUTER JOIN "upravna_enota" ON "nesreca"."upravna_enota" = "upravna_enota"."id_upravna_enota"  WHERE "nesreca"."naselje_ali_izven" IN ('D') AND "upravna_enota"."ime_upravna_enota" NOT LIKE '%Ljublj%ana%' AND "nesreca"."upravna_enota" BETWEEN 5549 AND 5562 AND "nesreca"."tekst_cesta_ali_naselje" = '328120 SPUHLJA'