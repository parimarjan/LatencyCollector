
SELECT MAX("payment"."payment_amt") as agg_0 FROM "member" LEFT OUTER JOIN "statement" ON "member"."member_no" = "statement"."member_no" LEFT OUTER JOIN "payment" ON "member"."member_no" = "payment"."member_no" LEFT OUTER JOIN "region" ON "member"."region_no" = "region"."region_no" LEFT OUTER JOIN "corporation" ON "region"."region_no" = "corporation"."region_no"  WHERE "payment"."payment_dt" != '%1999-09-02 00:00:00%' AND "statement"."member_no" IS NOT NULL AND "corporation"."region_no" IS NOT NULL;