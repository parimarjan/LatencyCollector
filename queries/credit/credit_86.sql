
SELECT MIN("region"."mail_code") as agg_0 FROM "provider" LEFT OUTER JOIN "region" ON "provider"."region_no" = "region"."region_no" LEFT OUTER JOIN "corporation" ON "region"."region_no" = "corporation"."region_no" LEFT OUTER JOIN "member" ON "region"."region_no" = "member"."region_no"  WHERE "provider"."region_no" BETWEEN 9 AND 10 AND "corporation"."region_no" IS NOT NULL AND "member"."region_no" IS NOT NULL;