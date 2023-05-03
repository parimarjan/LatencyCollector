
SELECT SUM("charge"."charge_code") as agg_0 FROM "provider" LEFT OUTER JOIN "region" ON "provider"."region_no" = "region"."region_no" LEFT OUTER JOIN "member" ON "region"."region_no" = "member"."region_no" LEFT OUTER JOIN "statement" ON "member"."member_no" = "statement"."member_no" LEFT OUTER JOIN "charge" ON "member"."member_no" = "charge"."member_no" LEFT OUTER JOIN "payment" ON "member"."member_no" = "payment"."member_no" LEFT OUTER JOIN "corporation" ON "region"."region_no" = "corporation"."region_no"  WHERE "provider"."expr_dt" IN ('2000-10-12 10:41:19') AND "region"."street" IN ('222 Second St.', '111 First St.') AND "payment"."payment_dt" != '%1999-09-02 00:00:00%' AND "statement"."member_no" IS NOT NULL AND "corporation"."region_no" IS NOT NULL;