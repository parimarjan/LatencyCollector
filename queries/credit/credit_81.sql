
SELECT MIN("region"."region_no") as agg_0 FROM "corporation" LEFT OUTER JOIN "region" ON "corporation"."region_no" = "region"."region_no"  WHERE "corporation"."expr_dt" NOT LIKE '%10:%41:26%' AND "corporation"."corp_code" IS NOT NULL;