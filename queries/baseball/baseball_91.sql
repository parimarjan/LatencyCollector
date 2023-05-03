
SELECT MAX("players"."birthDay") as agg_0 FROM "schools" LEFT OUTER JOIN "schoolsplayers" ON "schools"."schoolID" = "schoolsplayers"."schoolID" LEFT OUTER JOIN "players" ON "schoolsplayers"."playerID" = "players"."playerID" LEFT OUTER JOIN "pitchingpost" ON "players"."playerID" = "pitchingpost"."playerID" LEFT OUTER JOIN "awardsplayers" ON "players"."playerID" = "awardsplayers"."playerID" LEFT OUTER JOIN "pitching" ON "players"."playerID" = "pitching"."playerID"  WHERE "players"."deathState" LIKE '%MO%' AND "pitchingpost"."BB" <= 3 AND "pitching"."SHO" >= 0 AND ("schoolsplayers"."schoolID" IN ('holycross') OR "schoolsplayers"."playerID" != '%fossla01%') AND "pitching"."teamID" NOT LIKE '%TE%X%' AND "awardsplayers"."playerID" IS NOT NULL;