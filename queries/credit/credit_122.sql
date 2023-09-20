
SELECT MAX("region"."region_no") as agg_0 FROM "member" LEFT OUTER JOIN "payment" ON "member"."member_no" = "payment"."member_no" LEFT OUTER JOIN "statement" ON "member"."member_no" = "statement"."member_no" LEFT OUTER JOIN "region" ON "member"."region_no" = "region"."region_no" LEFT OUTER JOIN "provider" ON "region"."region_no" = "provider"."region_no" LEFT OUTER JOIN "corporation" ON "region"."region_no" = "corporation"."region_no" LEFT OUTER JOIN "charge" ON "member"."member_no" = "charge"."member_no"  WHERE ("region"."region_no" = 3 OR "region"."region_no" >= 4 OR "region"."region_no" != 1) AND "region"."region_name" NOT LIKE '%Europea%' AND "provider"."provider_name" IN ('Prov. Boston Ma', 'Prov. Boston Ne', 'Prov. Driven Ke', 'Prov. Expert Op') AND "payment"."member_no" IS NOT NULL AND "statement"."member_no" IS NOT NULL AND "corporation"."region_no" IS NOT NULL AND "charge"."member_no" IS NOT NULL;