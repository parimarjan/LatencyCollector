
SELECT MAX("member"."region_no") as agg_0 FROM "category" LEFT OUTER JOIN "charge" ON "category"."category_no" = "charge"."category_no" LEFT OUTER JOIN "member" ON "charge"."member_no" = "member"."member_no" LEFT OUTER JOIN "region" ON "member"."region_no" = "region"."region_no" LEFT OUTER JOIN "provider" ON "region"."region_no" = "provider"."region_no"  WHERE "member"."firstname" IN ('GJWDKIJGUOXWOB', 'QUHEIVWLQWGPAH', 'HIPSFEQDYINWI', 'NVJWQN', 'BXI', 'OCHCWOFWFYJGSO') AND "charge"."category_no" BETWEEN 4 AND 10 AND "provider"."region_no" IS NOT NULL;