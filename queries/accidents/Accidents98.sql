SELECT COUNT(*) as agg_0 FROM "upravna_enota" LEFT OUTER JOIN "oseba" ON "upravna_enota"."id_upravna_enota" = "oseba"."upravna_enota" LEFT OUTER JOIN "nesreca" ON "oseba"."id_nesreca" = "nesreca"."id_nesreca"  WHERE "oseba"."strokovni_pregled" >= 0.0 AND "oseba"."varnostni_pas_ali_celada" != '1' AND ("oseba"."drzavljanstvo" >= 0 OR ("oseba"."drzavljanstvo" BETWEEN 5 AND 6 AND "oseba"."drzavljanstvo" <= 5))