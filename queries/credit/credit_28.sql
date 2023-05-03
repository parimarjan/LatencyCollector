
SELECT MIN("member"."prev_balance") as agg_0 FROM "statement" LEFT OUTER JOIN "member" ON "statement"."member_no" = "member"."member_no";