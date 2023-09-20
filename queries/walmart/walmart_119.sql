
SELECT SUM("key"."store_nbr") as agg_0 FROM "key" LEFT OUTER JOIN "station" ON "key"."station_nbr" = "station"."station_nbr" LEFT OUTER JOIN "train" ON "key"."store_nbr" = "train"."store_nbr"  WHERE "station"."station_nbr" <= 5 AND "train"."units" >= 0 AND "key"."store_nbr" BETWEEN 16 AND 27 AND "key"."station_nbr" = 14;