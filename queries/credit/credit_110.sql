
SELECT MAX("member"."member_no") as agg_0 FROM "statement" LEFT OUTER JOIN "member" ON "statement"."member_no" = "member"."member_no"  WHERE "statement"."due_dt" NOT LIKE '%1%999-09-02%' AND "member"."issue_dt" LIKE '%1999-10-1%3%' AND ("member"."firstname" IN ('UQQQQVKDFT', 'IDS', 'GJWDKIJGUOXWOB', 'QUHEIVWLQWGPAH', 'GOPIAYMK', 'MVE') OR "member"."firstname" IN ('GJWDKIJGUOXWOB', 'GOPIAYMK', 'MVE'));