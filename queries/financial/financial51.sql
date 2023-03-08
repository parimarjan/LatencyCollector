SELECT MAX("trans"."account" + "district"."district_id") as agg_0 FROM "district" LEFT OUTER JOIN "account" ON "district"."district_id" = "account"."district_id" LEFT OUTER JOIN "loan" ON "account"."account_id" = "loan"."account_id" LEFT OUTER JOIN "trans" ON "account"."account_id" = "trans"."account_id" LEFT OUTER JOIN "client" ON "district"."district_id" = "client"."district_id"  WHERE "district"."A12" BETWEEN 1.2180196766135827 AND 2.264948755250639 AND "trans"."bank" LIKE '%YZ%' AND "trans"."account" IS NOT NULL