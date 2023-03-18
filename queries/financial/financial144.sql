SELECT AVG("trans"."account_id" + "trans"."trans_id") as agg_0, AVG("district"."A12") as agg_1, COUNT(*) as agg_2 FROM "account" LEFT OUTER JOIN "district" ON "account"."district_id" = "district"."district_id" LEFT OUTER JOIN "trans" ON "account"."account_id" = "trans"."account_id" LEFT OUTER JOIN "client" ON "district"."district_id" = "client"."district_id"  WHERE "trans"."date" IN ('1998-06-30', '1998-07-31') AND "account"."district_id" >= 265 AND "district"."A7" = 7 AND ("district"."A2" NOT LIKE '%Lip%a%' OR "district"."A5" >= 63) AND "district"."A10" <= 51.01050368069198