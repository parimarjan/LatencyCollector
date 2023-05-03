
SELECT MAX("key"."store_nbr") as agg_0 FROM "station" LEFT OUTER JOIN "key" ON "station"."station_nbr" = "key"."station_nbr"  WHERE "station"."station_nbr" != 19 AND "key"."station_nbr" != 13;