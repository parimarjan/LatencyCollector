
SELECT MAX("train"."store_nbr") as agg_0 FROM "train" LEFT OUTER JOIN "key" ON "train"."store_nbr" = "key"."store_nbr"  WHERE "key"."station_nbr" != 19 AND "train"."units" >= 0 AND "key"."store_nbr" = 4 AND "train"."store_nbr" >= 43;