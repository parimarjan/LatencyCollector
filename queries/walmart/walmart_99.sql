
SELECT MIN("key"."store_nbr") as agg_0 FROM "key" LEFT OUTER JOIN "station" ON "key"."station_nbr" = "station"."station_nbr"  WHERE "key"."station_nbr" = 7 AND "station"."station_nbr" <= 9;