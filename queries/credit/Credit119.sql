SELECT MAX("payment"."payment_no") as agg_0, MIN("member"."member_no") as agg_1 FROM "payment" LEFT OUTER JOIN "member" ON "payment"."member_no" = "member"."member_no"  WHERE "member"."expr_dt" NOT LIKE '%2000-10-12%' AND "member"."issue_dt" IN ('1999-10-13 10:43:14', '1999-10-13 10:42:54', '1999-10-13 10:42:35', '1999-10-13 10:43:36', '1999-10-13 10:42:40') AND ("payment"."payment_code" BETWEEN nan AND nan OR "payment"."payment_dt" LIKE '%1999-09-02%')