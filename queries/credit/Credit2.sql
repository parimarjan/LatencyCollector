SELECT MAX("region"."region_code" + "member"."curr_balance") as agg_0 FROM "provider" LEFT OUTER JOIN "region" ON "provider"."region_no" = "region"."region_no" LEFT OUTER JOIN "member" ON "region"."region_no" = "member"."region_no" LEFT OUTER JOIN "payment" ON "member"."member_no" = "payment"."member_no"  WHERE "region"."region_no" <= 31 AND "region"."state_prov" NOT LIKE '%ON%'