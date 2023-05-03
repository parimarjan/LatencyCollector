
SELECT MAX("region"."region_no") as agg_0 FROM "corporation" LEFT OUTER JOIN "region" ON "corporation"."region_no" = "region"."region_no" LEFT OUTER JOIN "provider" ON "region"."region_no" = "provider"."region_no" LEFT OUTER JOIN "member" ON "region"."region_no" = "member"."region_no" LEFT OUTER JOIN "statement" ON "member"."member_no" = "statement"."member_no" LEFT OUTER JOIN "charge" ON "member"."member_no" = "charge"."member_no" LEFT OUTER JOIN "category" ON "charge"."category_no" = "category"."category_no"  WHERE "member"."prev_balance" BETWEEN 0.0 AND 1.0 AND ("statement"."statement_dt" LIKE '%1999%-09-13%' OR ("statement"."statement_dt" NOT LIKE '%1999-09-13%' AND "statement"."statement_dt" NOT LIKE '%19%99-09-13%')) AND "provider"."region_no" IS NOT NULL AND "category"."category_no" IS NOT NULL;