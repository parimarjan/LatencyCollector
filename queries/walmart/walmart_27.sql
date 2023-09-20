
SELECT SUM("key"."store_nbr") as agg_0 FROM "key" LEFT OUTER JOIN "station" ON "key"."station_nbr" = "station"."station_nbr"  WHERE "key"."store_nbr" BETWEEN 12 AND 23 AND "station"."station_nbr" BETWEEN 11 AND 15 AND "key"."station_nbr" BETWEEN 13 AND 16;