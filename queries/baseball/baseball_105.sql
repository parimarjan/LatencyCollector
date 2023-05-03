
SELECT SUM("pitching"."BB") as agg_0 FROM "pitching" LEFT OUTER JOIN "players" ON "pitching"."playerID" = "players"."playerID" LEFT OUTER JOIN "battingpost" ON "players"."playerID" = "battingpost"."playerID" LEFT OUTER JOIN "schoolsplayers" ON "players"."playerID" = "schoolsplayers"."playerID" LEFT OUTER JOIN "fieldingpost" ON "players"."playerID" = "fieldingpost"."playerID" LEFT OUTER JOIN "awardsplayers" ON "players"."playerID" = "awardsplayers"."playerID" LEFT OUTER JOIN "fieldingof" ON "players"."playerID" = "fieldingof"."playerID" LEFT OUTER JOIN "fielding" ON "players"."playerID" = "fielding"."playerID" LEFT OUTER JOIN "awardsshareplayers" ON "players"."playerID" = "awardsshareplayers"."playerID" LEFT OUTER JOIN "batting" ON "players"."playerID" = "batting"."playerID" LEFT OUTER JOIN "appearances" ON "players"."playerID" = "appearances"."playerID"  WHERE "awardsshareplayers"."awardID" NOT LIKE '%Year%' AND "schoolsplayers"."playerID" IN ('scanldo01') AND "battingpost"."SO" >= 0 AND "fieldingpost"."round" IN ('ALCS', 'NWDIV', 'NLDS1', 'NLDS2', 'WS', 'ALDS2') AND "fielding"."lgID" IN ('AA', 'PL', 'FL', 'NL', 'AL') AND ("schoolsplayers"."yearMax" >= 1914 OR "schoolsplayers"."schoolID" = '%susquehnna%' OR "schoolsplayers"."yearMax" BETWEEN 1934 AND 1992) AND "batting"."teamID" IN ('CHA', 'CIN', 'BOS', 'SLN', 'NYA', 'CHN') AND "awardsplayers"."playerID" IS NOT NULL AND "fieldingof"."playerID" IS NOT NULL AND "appearances"."playerID" IS NOT NULL;