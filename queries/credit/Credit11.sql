SELECT SUM("payment"."member_no") as agg_0, MIN("payment"."payment_code") as agg_1, SUM("payment"."payment_code") as agg_2 FROM "payment" LEFT OUTER JOIN "member" ON "payment"."member_no" = "member"."member_no"  WHERE "payment"."payment_no" >= 10204 AND "member"."city" = ' '