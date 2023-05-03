
SELECT SUM("member"."photograph") as agg_0 FROM "payment" LEFT OUTER JOIN "member" ON "payment"."member_no" = "member"."member_no"  WHERE "payment"."payment_dt" NOT LIKE '%1999-10-03%';