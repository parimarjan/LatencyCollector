
SELECT SUM("charge"."category_no") as agg_0 FROM "charge" LEFT OUTER JOIN "member" ON "charge"."member_no" = "member"."member_no" LEFT OUTER JOIN "statement" ON "member"."member_no" = "statement"."member_no" LEFT OUTER JOIN "region" ON "member"."region_no" = "region"."region_no" LEFT OUTER JOIN "payment" ON "member"."member_no" = "payment"."member_no"  WHERE ("charge"."charge_no" BETWEEN 860794 AND 1972153 OR "charge"."charge_no" >= 1379555 OR "charge"."charge_no" <= 1958662) AND "statement"."statement_dt" NOT LIKE '%00:00:00%' AND "region"."region_no" IS NOT NULL AND "payment"."member_no" IS NOT NULL;