SELECT AVG("member"."prev_balance" + "statement"."member_no") as agg_0 FROM "statement" LEFT OUTER JOIN "member" ON "statement"."member_no" = "member"."member_no"  WHERE "statement"."due_dt" NOT LIKE '%00:00:0%0%' AND "member"."issue_dt" LIKE '%1999-10-%13%'