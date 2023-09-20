
SELECT AVG("teams"."AB") as agg_0 FROM "els_teamnames" LEFT OUTER JOIN "teamsfranchises" ON "els_teamnames"."franchid" = "teamsfranchises"."franchID" LEFT OUTER JOIN "teams" ON "els_teamnames"."teamid" = "teams"."teamID" LEFT OUTER JOIN "managers" ON "teams"."teamID" = "managers"."teamID" LEFT OUTER JOIN "awardsmanagers" ON "managers"."managerID" = "awardsmanagers"."managerID" LEFT OUTER JOIN "salaries" ON "teams"."teamID" = "salaries"."teamID"  WHERE "els_teamnames"."park" != '%Yankee Stadium II%' AND "teams"."park" != '%Bennett Park%' AND "els_teamnames"."lgid" NOT LIKE '%NL%' AND "teamsfranchises"."franchID" = '%CLS%' AND "awardsmanagers"."managerID" NOT LIKE '%manueje01m%' AND "salaries"."teamID" NOT LIKE '%CL%E%' AND "managers"."teamID" IN ('PHI', 'CLE', 'CHA', 'DET');