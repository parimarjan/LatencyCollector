SELECT SUM("oseba"."drzavljanstvo") as agg_0, AVG("nesreca"."upravna_enota") as agg_1, COUNT(*) as agg_2 FROM "nesreca" LEFT OUTER JOIN "oseba" ON "nesreca"."id_nesreca" = "oseba"."id_nesreca"  WHERE "oseba"."alkotest" IS NULL