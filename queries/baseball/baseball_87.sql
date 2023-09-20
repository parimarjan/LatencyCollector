
SELECT AVG("teams"."SB") as agg_0 FROM "awardssharemanagers" LEFT OUTER JOIN "managers" ON "awardssharemanagers"."managerID" = "managers"."managerID" LEFT OUTER JOIN "managershalf" ON "managers"."managerID" = "managershalf"."managerID" LEFT OUTER JOIN "awardsmanagers" ON "managers"."managerID" = "awardsmanagers"."managerID" LEFT OUTER JOIN "teams" ON "managers"."teamID" = "teams"."teamID" LEFT OUTER JOIN "salaries" ON "teams"."teamID" = "salaries"."teamID" LEFT OUTER JOIN "batting" ON "teams"."teamID" = "batting"."teamID" LEFT OUTER JOIN "players" ON "batting"."playerID" = "players"."playerID" LEFT OUTER JOIN "battingpost" ON "players"."playerID" = "battingpost"."playerID" LEFT OUTER JOIN "awardsshareplayers" ON "players"."playerID" = "awardsshareplayers"."playerID" LEFT OUTER JOIN "awardsplayers" ON "players"."playerID" = "awardsplayers"."playerID"  WHERE "teams"."CG" >= 147 AND "managers"."teamID" IN ('PHI', 'CHN', 'SLN', 'BOS', 'DET', 'PIT', 'NYA', 'CLE', 'CIN') AND "managershalf"."half" != 1 AND "awardssharemanagers"."awardID" IN ('Mgr of the year') AND "awardsmanagers"."managerID" IS NOT NULL AND "salaries"."teamID" IS NOT NULL AND "battingpost"."playerID" IS NOT NULL AND "awardsshareplayers"."playerID" IS NOT NULL AND "awardsplayers"."playerID" IS NOT NULL;