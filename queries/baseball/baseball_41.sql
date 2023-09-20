
SELECT MIN("batting"."CS") as agg_0 FROM "awardsmanagers" LEFT OUTER JOIN "managers" ON "awardsmanagers"."managerID" = "managers"."managerID" LEFT OUTER JOIN "teams" ON "managers"."teamID" = "teams"."teamID" LEFT OUTER JOIN "salaries" ON "teams"."teamID" = "salaries"."teamID" LEFT OUTER JOIN "els_teamnames" ON "teams"."teamID" = "els_teamnames"."teamid" LEFT OUTER JOIN "awardssharemanagers" ON "managers"."managerID" = "awardssharemanagers"."managerID" LEFT OUTER JOIN "seriespost" ON "teams"."teamID" = "seriespost"."teamIDwinner" LEFT OUTER JOIN "teamsfranchises" ON "els_teamnames"."franchid" = "teamsfranchises"."franchID" LEFT OUTER JOIN "batting" ON "teams"."teamID" = "batting"."teamID"  WHERE ("awardssharemanagers"."lgID" != '%AL%' OR ("awardssharemanagers"."lgID" LIKE '%NL%' AND "awardssharemanagers"."lgID" IN ('AL'))) AND "els_teamnames"."name" != '%Philadelphia Centennials%' AND "teams"."BBA" <= 499 AND "teams"."LgWin" IN ('Y') AND "seriespost"."lgIDloser" NOT LIKE '%AL%' AND ("batting"."CS" <= 0.0 OR "batting"."HR" <= 0.14908383244576084) AND "salaries"."teamID" IS NOT NULL AND "teamsfranchises"."franchID" IS NOT NULL;