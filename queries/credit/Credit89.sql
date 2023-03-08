SELECT MAX("statement"."member_no" + "member"."corp_no") as agg_0 FROM "payment" LEFT OUTER JOIN "member" ON "payment"."member_no" = "member"."member_no" LEFT OUTER JOIN "region" ON "member"."region_no" = "region"."region_no" LEFT OUTER JOIN "statement" ON "member"."member_no" = "statement"."member_no" LEFT OUTER JOIN "charge" ON "member"."member_no" = "charge"."member_no"  WHERE "payment"."payment_dt" LIKE '%1999-%10-03%' AND "charge"."charge_amt" BETWEEN 67.74304939247713 AND 487.2216745018271 AND "member"."expr_dt" NOT LIKE '%2000-%10-12%' AND "member"."lastname" NOT LIKE '%TOLSKY%'