
SELECT COUNT(*) as agg_0 FROM "train" LEFT OUTER JOIN "key" ON "train"."store_nbr" = "key"."store_nbr"  WHERE "key"."store_nbr" <= 21 AND "train"."date" IN ('2012-09-06', '2013-02-26', '2013-02-21');