SELECT MIN("member"."middleinitial") as agg_0, MAX("region"."mail_code" + "corporation"."corp_no") as agg_1, COUNT(*) as agg_2 FROM "corporation" LEFT OUTER JOIN "region" ON "corporation"."region_no" = "region"."region_no" LEFT OUTER JOIN "member" ON "region"."region_no" = "member"."region_no"  WHERE "member"."expr_dt" LIKE '%2000-10-1%2%' AND "region"."country" IN ('Sw', 'Ja') AND "corporation"."corp_no" <= 436 AND "member"."lastname" NOT LIKE '%WOLFMULE%'