SELECT SUM("corporation"."corp_no") as agg_0, AVG("charge"."charge_amt") as agg_1 FROM "region" LEFT OUTER JOIN "member" ON "region"."region_no" = "member"."region_no" LEFT OUTER JOIN "corporation" ON "region"."region_no" = "corporation"."region_no" LEFT OUTER JOIN "provider" ON "region"."region_no" = "provider"."region_no" LEFT OUTER JOIN "charge" ON "provider"."provider_no" = "charge"."provider_no"  WHERE "corporation"."corp_name" NOT LIKE '%NeedleworkC%orp.%'