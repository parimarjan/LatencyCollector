
SELECT MAX("battingpost"."SB") as agg_0 FROM "awardsshareplayers" LEFT OUTER JOIN "players" ON "awardsshareplayers"."playerID" = "players"."playerID" LEFT OUTER JOIN "batting" ON "players"."playerID" = "batting"."playerID" LEFT OUTER JOIN "awardsplayers" ON "players"."playerID" = "awardsplayers"."playerID" LEFT OUTER JOIN "halloffame" ON "players"."hofID" = "halloffame"."hofID" LEFT OUTER JOIN "schoolsplayers" ON "players"."playerID" = "schoolsplayers"."playerID" LEFT OUTER JOIN "battingpost" ON "players"."playerID" = "battingpost"."playerID" LEFT OUTER JOIN "fielding" ON "players"."playerID" = "fielding"."playerID" LEFT OUTER JOIN "fieldingof" ON "players"."playerID" = "fieldingof"."playerID"  WHERE "awardsshareplayers"."lgID" NOT LIKE '%N%L%' AND "halloffame"."ballots" IS NOT NULL AND "schoolsplayers"."playerID" = '%shepaja01%' AND "batting"."lgID" NOT LIKE '%A%A%' AND "awardsplayers"."playerID" IS NOT NULL AND "fielding"."playerID" IS NOT NULL AND "fieldingof"."playerID" IS NOT NULL;