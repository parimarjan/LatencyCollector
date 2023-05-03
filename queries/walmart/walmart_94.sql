
SELECT COUNT(*) as agg_0 FROM "station" LEFT OUTER JOIN "key" ON "station"."station_nbr" = "key"."station_nbr"  WHERE "station"."station_nbr" >= 15 AND "key"."station_nbr" BETWEEN 10 AND 16;