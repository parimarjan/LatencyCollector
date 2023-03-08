SELECT MAX("corporation"."mail_code") as agg_0, MAX("member"."curr_balance") as agg_1 FROM "region" LEFT OUTER JOIN "member" ON "region"."region_no" = "member"."region_no" LEFT OUTER JOIN "statement" ON "member"."member_no" = "statement"."member_no" LEFT OUTER JOIN "corporation" ON "region"."region_no" = "corporation"."region_no"  WHERE "member"."issue_dt" NOT LIKE '%1999-%10-13%' AND ("region"."country" = 'Br' OR "region"."region_no" BETWEEN 2 AND 5) AND ("statement"."due_dt" NOT LIKE '%00:0%0:00%' OR "statement"."statement_dt" IN ('1999-09-13 00:00:00') OR "statement"."due_dt" LIKE '%00:%00:00%')