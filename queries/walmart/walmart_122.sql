
SELECT COUNT(*) as agg_0 FROM "station" LEFT OUTER JOIN "key" ON "station"."station_nbr" = "key"."station_nbr"  WHERE "station"."station_nbr" BETWEEN 2 AND 18 AND "key"."store_nbr" = 27 AND "key"."station_nbr" <= 7;