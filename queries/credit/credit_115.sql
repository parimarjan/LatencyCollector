
SELECT AVG("member"."state_prov") as agg_0 FROM "provider" LEFT OUTER JOIN "region" ON "provider"."region_no" = "region"."region_no" LEFT OUTER JOIN "member" ON "region"."region_no" = "member"."region_no" LEFT OUTER JOIN "charge" ON "member"."member_no" = "charge"."member_no" LEFT OUTER JOIN "payment" ON "member"."member_no" = "payment"."member_no"  WHERE "charge"."member_no" BETWEEN 2348 AND 7332 AND "region"."region_name" IN ('North American', 'Western Europea') AND "payment"."member_no" IS NOT NULL;