
SELECT AVG("train"."units") as agg_0 FROM "train" LEFT OUTER JOIN "key" ON "train"."store_nbr" = "key"."store_nbr"  WHERE "train"."date" = '%2013-03-09%' AND "key"."store_nbr" = 9;