
SELECT SUM("key"."store_nbr") as agg_0 FROM "station" LEFT OUTER JOIN "key" ON "station"."station_nbr" = "key"."station_nbr"  WHERE "station"."station_nbr" >= 13 AND "key"."store_nbr" <= 29 AND "key"."station_nbr" = 1;