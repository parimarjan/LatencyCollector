
SELECT AVG("charge"."statement_no") as agg_0 FROM "payment" LEFT OUTER JOIN "member" ON "payment"."member_no" = "member"."member_no" LEFT OUTER JOIN "charge" ON "member"."member_no" = "charge"."member_no"  WHERE "payment"."payment_dt" != '%1999-10-03 00:00:00%' AND "charge"."member_no" BETWEEN 7872 AND 8736 AND "charge"."charge_no" >= 1847157;