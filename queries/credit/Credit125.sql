SELECT MAX("member"."country") as agg_0 FROM "payment" LEFT OUTER JOIN "member" ON "payment"."member_no" = "member"."member_no"  WHERE "payment"."payment_dt" LIKE '%1999-09-02%' AND "member"."curr_balance" >= 0.0