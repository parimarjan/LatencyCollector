
SELECT COUNT(*) as agg_0 FROM "payment" LEFT OUTER JOIN "member" ON "payment"."member_no" = "member"."member_no" LEFT OUTER JOIN "region" ON "member"."region_no" = "region"."region_no" LEFT OUTER JOIN "charge" ON "member"."member_no" = "charge"."member_no" LEFT OUTER JOIN "corporation" ON "region"."region_no" = "corporation"."region_no"  WHERE "corporation"."corp_name" LIKE '%MakersInc.%' AND ("region"."street" LIKE '%S%t.%' OR "region"."region_name" = '%Africa%') AND "charge"."member_no" IS NOT NULL;