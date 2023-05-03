
SELECT SUM("train"."item_nbr") as agg_0 FROM "key" LEFT OUTER JOIN "train" ON "key"."store_nbr" = "train"."store_nbr"  WHERE "key"."station_nbr" != 15 AND "key"."store_nbr" BETWEEN 15 AND 17;