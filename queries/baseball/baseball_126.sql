
SELECT MAX("teams"."SHO") as agg_0 FROM "battingpost" LEFT OUTER JOIN "players" ON "battingpost"."playerID" = "players"."playerID" LEFT OUTER JOIN "batting" ON "players"."playerID" = "batting"."playerID" LEFT OUTER JOIN "pitchingpost" ON "players"."playerID" = "pitchingpost"."playerID" LEFT OUTER JOIN "fielding" ON "players"."playerID" = "fielding"."playerID" LEFT OUTER JOIN "pitching" ON "players"."playerID" = "pitching"."playerID" LEFT OUTER JOIN "appearances" ON "players"."playerID" = "appearances"."playerID" LEFT OUTER JOIN "awardsplayers" ON "players"."playerID" = "awardsplayers"."playerID" LEFT OUTER JOIN "teams" ON "batting"."teamID" = "teams"."teamID" LEFT OUTER JOIN "schoolsplayers" ON "players"."playerID" = "schoolsplayers"."playerID"  WHERE "pitching"."teamID" = '%SL2%' AND ("appearances"."G_rf" BETWEEN 0 AND 1 OR "appearances"."G_p" BETWEEN 7 AND 68) AND "awardsplayers"."yearID" BETWEEN 1984 AND 2005 AND "pitchingpost"."playerID" IS NOT NULL AND "fielding"."playerID" IS NOT NULL AND "schoolsplayers"."playerID" IS NOT NULL;