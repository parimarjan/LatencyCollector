
SELECT MAX("train"."store_nbr") as agg_0 FROM "key" LEFT OUTER JOIN "train" ON "key"."store_nbr" = "train"."store_nbr"  WHERE ("key"."station_nbr" BETWEEN 2 AND 16 OR ("key"."store_nbr" = 42 AND "key"."station_nbr" BETWEEN 10 AND 15)) AND "train"."item_nbr" BETWEEN 80 AND 84;