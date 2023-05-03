
SELECT COUNT(*) as agg_0 FROM "statement" LEFT OUTER JOIN "member" ON "statement"."member_no" = "member"."member_no"  WHERE "member"."street" = '% %' AND "statement"."statement_dt" LIKE '%00:00:00%';