
SELECT COUNT(*) as agg_0 FROM "provider" LEFT OUTER JOIN "region" ON "provider"."region_no" = "region"."region_no" LEFT OUTER JOIN "member" ON "region"."region_no" = "member"."region_no"  WHERE "member"."lastname" LIKE '%FLO%RINI%' AND "provider"."state_prov" IS NOT NULL AND ("member"."member_no" BETWEEN 2349 AND 4712 OR ("member"."issue_dt" = '%1999-10-13 10:43:35%' AND "member"."member_no" <= 2328));