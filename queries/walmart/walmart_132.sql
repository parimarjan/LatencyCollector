
SELECT COUNT(*) as agg_0 FROM "train" LEFT OUTER JOIN "key" ON "train"."store_nbr" = "key"."store_nbr"  WHERE "train"."store_nbr" = 12 AND "key"."store_nbr" != 27 AND ("train"."units" <= 0 OR ("train"."units" <= 0 AND "train"."units" >= 0)) AND "train"."item_nbr" <= 59;