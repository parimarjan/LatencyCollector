
SELECT MIN("provider"."state_prov") as agg_0 FROM "provider" LEFT OUTER JOIN "region" ON "provider"."region_no" = "region"."region_no" LEFT OUTER JOIN "member" ON "region"."region_no" = "member"."region_no" LEFT OUTER JOIN "payment" ON "member"."member_no" = "payment"."member_no" LEFT OUTER JOIN "corporation" ON "region"."region_no" = "corporation"."region_no" LEFT OUTER JOIN "charge" ON "member"."member_no" = "charge"."member_no"  WHERE "corporation"."corp_name" = '%Corp. Driven QuestsCorp.%' AND "region"."city" IN ('Sao Paulo') AND "corporation"."region_no" <= 8 AND "payment"."member_no" IS NOT NULL AND "charge"."member_no" IS NOT NULL;