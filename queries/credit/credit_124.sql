
SELECT MAX("member"."region_no") as agg_0 FROM "member" LEFT OUTER JOIN "statement" ON "member"."member_no" = "statement"."member_no"  WHERE "statement"."statement_amt" >= 21690.09094974358;