
SELECT SUM("provider"."provider_code") as agg_0 FROM "provider" LEFT OUTER JOIN "region" ON "provider"."region_no" = "region"."region_no" LEFT OUTER JOIN "corporation" ON "region"."region_no" = "corporation"."region_no" LEFT OUTER JOIN "member" ON "region"."region_no" = "member"."region_no"  WHERE "member"."lastname" NOT LIKE '%S%TEIN%' AND "member"."issue_dt" IN ('1999-10-13 10:42:39', '1999-10-13 10:42:46', '1999-10-13 10:42:54', '1999-10-13 10:43:22', '1999-10-13 10:42:35', '1999-10-13 10:41:40') AND "corporation"."region_no" IS NOT NULL;