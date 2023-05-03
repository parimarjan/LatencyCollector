
SELECT SUM("station"."station_nbr") as agg_0 FROM "station" LEFT OUTER JOIN "key" ON "station"."station_nbr" = "key"."station_nbr"  WHERE "key"."store_nbr" = 21 AND "station"."station_nbr" != 12;