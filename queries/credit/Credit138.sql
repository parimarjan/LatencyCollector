SELECT SUM("corporation"."mail_code") as agg_0, COUNT(*) as agg_1 FROM "corporation" LEFT OUTER JOIN "region" ON "corporation"."region_no" = "region"."region_no" LEFT OUTER JOIN "member" ON "region"."region_no" = "member"."region_no"  WHERE "region"."city" NOT LIKE '%Momba%ssa%'