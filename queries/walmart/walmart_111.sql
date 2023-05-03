
SELECT SUM("train"."store_nbr") as agg_0 FROM "station" LEFT OUTER JOIN "key" ON "station"."station_nbr" = "key"."station_nbr" LEFT OUTER JOIN "train" ON "key"."store_nbr" = "train"."store_nbr"  WHERE "station"."station_nbr" BETWEEN 8 AND 15 AND "key"."station_nbr" >= 2 AND "key"."store_nbr" >= 29 AND "train"."item_nbr" <= 66;