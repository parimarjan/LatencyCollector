
SELECT AVG("key"."store_nbr") as agg_0 FROM "key" LEFT OUTER JOIN "station" ON "key"."station_nbr" = "station"."station_nbr"  WHERE "station"."station_nbr" >= 15 AND "key"."store_nbr" != 23;