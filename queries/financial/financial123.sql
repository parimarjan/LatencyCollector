SELECT SUM("loan"."account_id") as agg_0, SUM("loan"."duration") as agg_1 FROM "loan"  WHERE "loan"."status" IN ('C', 'A', 'D') AND "loan"."payments" BETWEEN 2529.093708720894 AND 4762.5403126351475