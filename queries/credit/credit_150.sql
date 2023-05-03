
SELECT SUM("member"."curr_balance") as agg_0 FROM "charge" LEFT OUTER JOIN "category" ON "charge"."category_no" = "category"."category_no" LEFT OUTER JOIN "member" ON "charge"."member_no" = "member"."member_no"  WHERE "member"."member_no" >= 7187 AND "member"."expr_dt" LIKE '%2000-10-12%' AND "category"."category_no" IS NOT NULL;