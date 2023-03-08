SELECT MAX("region"."phone_no" + "member"."curr_balance") as agg_0 FROM "payment" LEFT OUTER JOIN "member" ON "payment"."member_no" = "member"."member_no" LEFT OUTER JOIN "charge" ON "member"."member_no" = "charge"."member_no" LEFT OUTER JOIN "region" ON "member"."region_no" = "region"."region_no"  WHERE ("payment"."statement_no" != 0 OR "payment"."payment_amt" <= 4647.761363334104 OR "payment"."statement_no" <= 0) AND "region"."city" IN ('Goteborg', 'Brussels', 'Tokyo') AND "charge"."charge_code" BETWEEN nan AND nan AND "charge"."charge_no" >= 677305