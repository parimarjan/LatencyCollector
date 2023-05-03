
SELECT MAX("pitchingpost"."SV") as agg_0 FROM "pitchingpost" LEFT OUTER JOIN "players" ON "pitchingpost"."playerID" = "players"."playerID" LEFT OUTER JOIN "fielding" ON "players"."playerID" = "fielding"."playerID" LEFT OUTER JOIN "fieldingof" ON "players"."playerID" = "fieldingof"."playerID" LEFT OUTER JOIN "halloffame" ON "players"."hofID" = "halloffame"."hofID" LEFT OUTER JOIN "pitching" ON "players"."playerID" = "pitching"."playerID" LEFT OUTER JOIN "awardsshareplayers" ON "players"."playerID" = "awardsshareplayers"."playerID" LEFT OUTER JOIN "schoolsplayers" ON "players"."playerID" = "schoolsplayers"."playerID" LEFT OUTER JOIN "appearances" ON "players"."playerID" = "appearances"."playerID" LEFT OUTER JOIN "fieldingpost" ON "players"."playerID" = "fieldingpost"."playerID"  WHERE "awardsshareplayers"."awardID" NOT LIKE '%th%e%' AND "schoolsplayers"."schoolID" LIKE '%stmary%sca%' AND "players"."college" = '%Middlesex CC%' AND "fielding"."playerID" IS NOT NULL AND "fieldingof"."playerID" IS NOT NULL AND "halloffame"."hofID" IS NOT NULL AND "pitching"."playerID" IS NOT NULL AND "appearances"."playerID" IS NOT NULL AND "fieldingpost"."playerID" IS NOT NULL;