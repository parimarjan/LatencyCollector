
SELECT MAX("member"."prev_balance") as agg_0 FROM "member" LEFT OUTER JOIN "payment" ON "member"."member_no" = "payment"."member_no" LEFT OUTER JOIN "region" ON "member"."region_no" = "region"."region_no" LEFT OUTER JOIN "charge" ON "member"."member_no" = "charge"."member_no" LEFT OUTER JOIN "provider" ON "region"."region_no" = "provider"."region_no" LEFT OUTER JOIN "category" ON "charge"."category_no" = "category"."category_no"  WHERE "payment"."payment_dt" LIKE '%00:00:00%' AND "provider"."region_no" IS NOT NULL AND "category"."category_no" IS NOT NULL;