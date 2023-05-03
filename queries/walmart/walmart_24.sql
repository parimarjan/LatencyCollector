
SELECT MIN("key"."store_nbr") as agg_0 FROM "key" LEFT OUTER JOIN "station" ON "key"."station_nbr" = "station"."station_nbr"  WHERE "station"."station_nbr" BETWEEN 8 AND 18 AND "key"."store_nbr" <= 25 AND "key"."station_nbr" <= 1;