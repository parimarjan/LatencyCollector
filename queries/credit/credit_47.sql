
SELECT COUNT(*) as agg_0 FROM "region" LEFT OUTER JOIN "corporation" ON "region"."region_no" = "corporation"."region_no" LEFT OUTER JOIN "provider" ON "region"."region_no" = "provider"."region_no"  WHERE "corporation"."expr_dt" = '%2004-10-12 10:41:26%' AND "region"."street" = '%555 Fifth St St%' AND "provider"."region_no" IS NOT NULL;