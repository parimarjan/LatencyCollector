
SELECT COUNT(*) as agg_0 FROM "station" LEFT OUTER JOIN "key" ON "station"."station_nbr" = "key"."station_nbr"  WHERE "key"."store_nbr" >= 43 AND ("station"."station_nbr" <= 9 OR "station"."station_nbr" >= 13);