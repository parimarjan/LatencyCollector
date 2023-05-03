
SELECT SUM("region"."phone_no") as agg_0 FROM "provider" LEFT OUTER JOIN "region" ON "provider"."region_no" = "region"."region_no" LEFT OUTER JOIN "corporation" ON "region"."region_no" = "corporation"."region_no" LEFT OUTER JOIN "member" ON "region"."region_no" = "member"."region_no" LEFT OUTER JOIN "statement" ON "member"."member_no" = "statement"."member_no" LEFT OUTER JOIN "charge" ON "member"."member_no" = "charge"."member_no"  WHERE "provider"."expr_dt" NOT LIKE '%2%000-10-12%' AND "member"."street" = '% %' AND "charge"."provider_no" >= 497 AND "corporation"."region_no" IS NOT NULL AND "statement"."member_no" IS NOT NULL;