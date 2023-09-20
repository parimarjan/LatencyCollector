
SELECT MIN("key"."store_nbr") as agg_0 FROM "key" LEFT OUTER JOIN "station" ON "key"."station_nbr" = "station"."station_nbr"  WHERE "key"."station_nbr" <= 16 AND "key"."store_nbr" != 38 AND "station"."station_nbr" IS NOT NULL;