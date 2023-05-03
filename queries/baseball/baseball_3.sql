
SELECT MIN("teams"."attendance") as agg_0 FROM "awardssharemanagers" LEFT OUTER JOIN "managers" ON "awardssharemanagers"."managerID" = "managers"."managerID" LEFT OUTER JOIN "awardsmanagers" ON "managers"."managerID" = "awardsmanagers"."managerID" LEFT OUTER JOIN "managershalf" ON "managers"."managerID" = "managershalf"."managerID" LEFT OUTER JOIN "teams" ON "managers"."teamID" = "teams"."teamID" LEFT OUTER JOIN "seriespost" ON "teams"."teamID" = "seriespost"."teamIDwinner" LEFT OUTER JOIN "batting" ON "teams"."teamID" = "batting"."teamID"  WHERE "teams"."lgID" NOT LIKE '%N%L%' AND "seriespost"."lgIDloser" LIKE '%NL%' AND "teams"."teamIDlahman45" = '%PH4%' AND "seriespost"."wins" BETWEEN 4 AND 5 AND "seriespost"."round" LIKE '%ALDS2%' AND "managershalf"."teamID" = '%TOR%' AND "awardsmanagers"."managerID" IS NOT NULL AND "batting"."teamID" IS NOT NULL;