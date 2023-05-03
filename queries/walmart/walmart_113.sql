
SELECT MAX("train"."units") as agg_0 FROM "station" LEFT OUTER JOIN "key" ON "station"."station_nbr" = "key"."station_nbr" LEFT OUTER JOIN "train" ON "key"."store_nbr" = "train"."store_nbr"  WHERE "station"."station_nbr" = 13 AND "key"."station_nbr" BETWEEN 7 AND 8;