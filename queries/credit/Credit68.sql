SELECT MAX("charge"."charge_amt" + "member"."region_no") as agg_0, COUNT(*) as agg_1, SUM("charge"."statement_no" + "provider"."provider_code") as agg_2 FROM "statement" LEFT OUTER JOIN "member" ON "statement"."member_no" = "member"."member_no" LEFT OUTER JOIN "charge" ON "member"."member_no" = "charge"."member_no" LEFT OUTER JOIN "provider" ON "charge"."provider_no" = "provider"."provider_no" LEFT OUTER JOIN "region" ON "provider"."region_no" = "region"."region_no"  WHERE "region"."state_prov" != 'ON' AND ("statement"."due_dt" NOT LIKE '%00:00:00%' OR ("statement"."due_dt" LIKE '%199%9-10-03%' AND "statement"."due_dt" IN ('1999-09-02 00:00:00'))) AND ("charge"."provider_no" BETWEEN 442 AND 950 OR "charge"."provider_no" >= 500 OR "charge"."provider_no" >= 1599) AND "region"."street" LIKE '%333%'