SELECT SUM("account"."account_id" + "account"."district_id") as agg_0, SUM("account"."account_id" + "account"."district_id") as agg_1, MIN("account"."account_id") as agg_2 FROM "account"  WHERE "account"."frequency" IN ('POPLATEK TYDNE', 'POPLATEK PO OBRATU') AND "account"."date" != '1995-11-27' AND ("account"."account_id" <= 27623 OR "account"."district_id" <= 60 OR "account"."account_id" BETWEEN 2219 AND 45789) AND "account"."frequency" IN ('POPLATEK PO OBRATU', 'POPLATEK MESICNE')