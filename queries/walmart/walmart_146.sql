
SELECT MAX("key"."store_nbr") as agg_0 FROM "key" LEFT OUTER JOIN "train" ON "key"."store_nbr" = "train"."store_nbr"  WHERE "train"."store_nbr" >= 6 AND "key"."station_nbr" != 16 AND ("train"."units" >= 0 OR "train"."units" >= 0 OR "train"."units" <= 0);