
SELECT MIN("train"."units") as agg_0 FROM "key" LEFT OUTER JOIN "train" ON "key"."store_nbr" = "train"."store_nbr"  WHERE "key"."station_nbr" <= 18 AND "key"."store_nbr" >= 29;