SELECT COUNT(*) as agg_0, AVG("oseba"."alkotest" + "oseba"."vozniski_staz_MM") as agg_1, MAX("oseba"."spol" + "oseba"."drzavljanstvo") as agg_2 FROM "oseba"  WHERE "oseba"."strokovni_pregled_d" IN ('D') AND "oseba"."alkotest_d" IN ('H')