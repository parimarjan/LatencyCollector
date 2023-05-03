
SELECT AVG("players"."birthDay") as agg_0 FROM "awardsmanagers" LEFT OUTER JOIN "managers" ON "awardsmanagers"."managerID" = "managers"."managerID" LEFT OUTER JOIN "managershalf" ON "managers"."managerID" = "managershalf"."managerID" LEFT OUTER JOIN "teams" ON "managers"."teamID" = "teams"."teamID" LEFT OUTER JOIN "awardssharemanagers" ON "managers"."managerID" = "awardssharemanagers"."managerID" LEFT OUTER JOIN "teamshalf" ON "teams"."teamID" = "teamshalf"."teamID" LEFT OUTER JOIN "batting" ON "teams"."teamID" = "batting"."teamID" LEFT OUTER JOIN "players" ON "batting"."playerID" = "players"."playerID"  WHERE "awardssharemanagers"."awardID" NOT LIKE '%year%' AND "batting"."SH" >= 0.0 AND "teams"."LgWin" IN ('N') AND "players"."bats" IN ('L', 'B') AND "teams"."CG" BETWEEN 10 AND 24 AND "batting"."lgID" NOT LIKE '%AA%' AND ("awardssharemanagers"."pointsWon" BETWEEN 4 AND 33 OR "awardssharemanagers"."yearID" BETWEEN 1995 AND 2011 OR "awardssharemanagers"."pointsWon" <= 2) AND "teamshalf"."lgID" NOT LIKE '%N%L%' AND "managershalf"."managerID" IS NOT NULL;