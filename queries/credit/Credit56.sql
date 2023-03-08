SELECT MAX("statement"."member_no" + "member"."curr_balance") as agg_0, MIN("payment"."member_no" + "member"."member_code") as agg_1 FROM "statement" LEFT OUTER JOIN "member" ON "statement"."member_no" = "member"."member_no" LEFT OUTER JOIN "region" ON "member"."region_no" = "region"."region_no" LEFT OUTER JOIN "payment" ON "member"."member_no" = "payment"."member_no"  WHERE "payment"."payment_amt" >= 13462.759489962536 AND "statement"."due_dt" NOT LIKE '%00:00:00%' AND "member"."city" != ' '