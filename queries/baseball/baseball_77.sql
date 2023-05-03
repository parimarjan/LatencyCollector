
SELECT MIN("seriespost"."ties") as agg_0 FROM "teams" LEFT OUTER JOIN "allstarfull" ON "teams"."teamID" = "allstarfull"."teamID" LEFT OUTER JOIN "els_teamnames" ON "teams"."teamID" = "els_teamnames"."teamid" LEFT OUTER JOIN "batting" ON "teams"."teamID" = "batting"."teamID" LEFT OUTER JOIN "salaries" ON "teams"."teamID" = "salaries"."teamID" LEFT OUTER JOIN "teamsfranchises" ON "els_teamnames"."franchid" = "teamsfranchises"."franchID" LEFT OUTER JOIN "seriespost" ON "teams"."teamID" = "seriespost"."teamIDwinner" LEFT OUTER JOIN "players" ON "batting"."playerID" = "players"."playerID" LEFT OUTER JOIN "halloffame" ON "players"."hofID" = "halloffame"."hofID" LEFT OUTER JOIN "fieldingof" ON "players"."playerID" = "fieldingof"."playerID" LEFT OUTER JOIN "pitching" ON "players"."playerID" = "pitching"."playerID"  WHERE "halloffame"."category" != '%Pioneer/Executive%' AND "teams"."G" <= 81 AND "salaries"."yearID" BETWEEN 1987 AND 1998 AND "salaries"."lgID" NOT LIKE '%A%L%' AND "seriespost"."wins" BETWEEN 4 AND 5 AND "batting"."teamID" IN ('CIN', 'NYA', 'DET', 'SLN', 'CHN', 'CLE', 'CHA', 'BOS') AND "teamsfranchises"."franchName" IN ('Buffalo Bisons', 'Indianapolis Hoosiers', 'Syracuse Stars', 'Cincinnati Reds', 'Philadelphia Athletics', 'New York Mutuals', 'Kansas City Cowboys') AND "allstarfull"."teamID" IS NOT NULL AND "fieldingof"."playerID" IS NOT NULL AND "pitching"."playerID" IS NOT NULL;