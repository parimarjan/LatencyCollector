
SELECT SUM("teams"."HR") as agg_0 FROM "awardssharemanagers" LEFT OUTER JOIN "managers" ON "awardssharemanagers"."managerID" = "managers"."managerID" LEFT OUTER JOIN "managershalf" ON "managers"."managerID" = "managershalf"."managerID" LEFT OUTER JOIN "awardsmanagers" ON "managers"."managerID" = "awardsmanagers"."managerID" LEFT OUTER JOIN "teams" ON "managers"."teamID" = "teams"."teamID" LEFT OUTER JOIN "allstarfull" ON "teams"."teamID" = "allstarfull"."teamID" LEFT OUTER JOIN "els_teamnames" ON "teams"."teamID" = "els_teamnames"."teamid"  WHERE "managershalf"."G" = 53 AND "awardsmanagers"."lgID" IN ('AL') AND "teams"."DP" >= 170.04120125859728 AND "teams"."BBA" >= 390 AND "els_teamnames"."teamid" IN ('SLN', 'SFN', 'CLE', 'NYA', 'PHI', 'BSN') AND "managershalf"."lgID" NOT LIKE '%AL%' AND "allstarfull"."teamID" IS NOT NULL;