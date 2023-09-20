
SELECT SUM("region"."mail_code") as agg_0 FROM "corporation" LEFT OUTER JOIN "region" ON "corporation"."region_no" = "region"."region_no" LEFT OUTER JOIN "provider" ON "region"."region_no" = "provider"."region_no"  WHERE "region"."region_name" IN ('North American') AND "provider"."region_no" != 9;