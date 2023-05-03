
SELECT MIN("train"."store_nbr") as agg_0 FROM "train" LEFT OUTER JOIN "key" ON "train"."store_nbr" = "key"."store_nbr"  WHERE "key"."station_nbr" != 15 AND "key"."store_nbr" = 11;