
SELECT SUM("member"."prev_balance") as agg_0 FROM "charge" LEFT OUTER JOIN "member" ON "charge"."member_no" = "member"."member_no" LEFT OUTER JOIN "category" ON "charge"."category_no" = "category"."category_no" LEFT OUTER JOIN "region" ON "member"."region_no" = "region"."region_no" LEFT OUTER JOIN "corporation" ON "region"."region_no" = "corporation"."region_no"  WHERE ("region"."city" = '%Tokyo%' OR ("region"."mail_code" BETWEEN nan AND nan AND "region"."city" IN ('Madras', 'Mombassa', 'Budapest', 'Brussels', 'Goteborg', 'Tokyo'))) AND "region"."region_name" LIKE '%American%' AND "corporation"."corp_name" IN ('Corp. Boston MachineryLtd.', 'Corp. Giant RestaurantsCorp.', 'Corp. Driven TransitInc.', 'Corp. Humble NeedleworkCorp.', 'Corp. Computer QuestsInc.') AND "category"."category_no" IS NOT NULL;