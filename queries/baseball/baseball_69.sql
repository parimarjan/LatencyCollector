
SELECT COUNT(*) as agg_0 FROM "awardssharemanagers" LEFT OUTER JOIN "managers" ON "awardssharemanagers"."managerID" = "managers"."managerID" LEFT OUTER JOIN "managershalf" ON "managers"."managerID" = "managershalf"."managerID" LEFT OUTER JOIN "awardsmanagers" ON "managers"."managerID" = "awardsmanagers"."managerID" LEFT OUTER JOIN "teams" ON "managers"."teamID" = "teams"."teamID" LEFT OUTER JOIN "seriespost" ON "teams"."teamID" = "seriespost"."teamIDwinner" LEFT OUTER JOIN "salaries" ON "teams"."teamID" = "salaries"."teamID"  WHERE "awardssharemanagers"."awardID" LIKE '%Mg%r%' AND "managershalf"."half" >= 2 AND "seriespost"."teamIDwinner" != '%CHN%' AND "awardsmanagers"."managerID" IS NOT NULL AND "salaries"."teamID" IS NOT NULL;