
SELECT AVG("batting"."G_batting") as agg_0 FROM "teamshalf" LEFT OUTER JOIN "teams" ON "teamshalf"."teamID" = "teams"."teamID" LEFT OUTER JOIN "els_teamnames" ON "teams"."teamID" = "els_teamnames"."teamid" LEFT OUTER JOIN "teamsfranchises" ON "els_teamnames"."franchid" = "teamsfranchises"."franchID" LEFT OUTER JOIN "salaries" ON "teams"."teamID" = "salaries"."teamID" LEFT OUTER JOIN "batting" ON "teams"."teamID" = "batting"."teamID" LEFT OUTER JOIN "allstarfull" ON "teams"."teamID" = "allstarfull"."teamID" LEFT OUTER JOIN "players" ON "batting"."playerID" = "players"."playerID" LEFT OUTER JOIN "pitching" ON "players"."playerID" = "pitching"."playerID"  WHERE "els_teamnames"."franchid" = '%CBK%' AND ("els_teamnames"."id" <= 49 OR "els_teamnames"."teamid" IN ('CLE', 'SFN', 'PIT', 'BSN', 'SLN', 'NYA')) AND "allstarfull"."teamID" != '%LAN%' AND "teamshalf"."teamID" LIKE '%TOR%' AND "salaries"."teamID" LIKE '%P%HI%' AND ("els_teamnames"."lgid" = '%AL%' OR "els_teamnames"."park" NOT LIKE '%Park%') AND "els_teamnames"."lgid" IN ('AA', 'UA', 'PL', 'AL', 'NL') AND "pitching"."HR" >= 14 AND "teamsfranchises"."franchID" IS NOT NULL;