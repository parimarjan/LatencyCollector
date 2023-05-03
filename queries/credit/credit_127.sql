
SELECT MAX("member"."corp_no") as agg_0 FROM "member" LEFT OUTER JOIN "statement" ON "member"."member_no" = "statement"."member_no" LEFT OUTER JOIN "charge" ON "member"."member_no" = "charge"."member_no" LEFT OUTER JOIN "region" ON "member"."region_no" = "region"."region_no" LEFT OUTER JOIN "provider" ON "region"."region_no" = "provider"."region_no" LEFT OUTER JOIN "corporation" ON "region"."region_no" = "corporation"."region_no"  WHERE "region"."street" != '%444 Fourth St.%' AND "statement"."member_no" IS NOT NULL AND "charge"."member_no" IS NOT NULL AND "provider"."region_no" IS NOT NULL AND "corporation"."region_no" IS NOT NULL;