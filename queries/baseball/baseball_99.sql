
SELECT COUNT(*) as agg_0 FROM "teamsfranchises" LEFT OUTER JOIN "els_teamnames" ON "teamsfranchises"."franchID" = "els_teamnames"."franchid" LEFT OUTER JOIN "teams" ON "els_teamnames"."teamid" = "teams"."teamID"  WHERE "els_teamnames"."park" = '%Hilltop Park%' AND "els_teamnames"."franchid" LIKE '%FLA%' AND "teamsfranchises"."franchID" IN ('TBD', 'CHW', 'CPI', 'ARI', 'CNR', 'MIL') AND "teamsfranchises"."franchName" LIKE '%Detr%oit%' AND "teamsfranchises"."franchName" LIKE '%Chicago%' AND "teams"."teamID" IS NOT NULL;