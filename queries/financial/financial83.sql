SELECT MAX("account"."district_id" + "account"."account_id") as agg_0 FROM "account"  WHERE "account"."frequency" LIKE '%OBRATU%' AND "account"."frequency" IN ('POPLATEK MESICNE', 'POPLATEK PO OBRATU') AND "account"."date" = '1997-12-20' AND "account"."account_id" BETWEEN 14187 AND 110911