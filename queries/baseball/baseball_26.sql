
SELECT COUNT(*) as agg_0 FROM "pitchingpost" LEFT OUTER JOIN "players" ON "pitchingpost"."playerID" = "players"."playerID" LEFT OUTER JOIN "appearances" ON "players"."playerID" = "appearances"."playerID" LEFT OUTER JOIN "fieldingpost" ON "players"."playerID" = "fieldingpost"."playerID"  WHERE "players"."nameGiven" LIKE '%Ha%rry%' AND "pitchingpost"."round" NOT LIKE '%NL%DS1%' AND "appearances"."lgID" LIKE '%AL%' AND "players"."lahmanID" >= 9647 AND "fieldingpost"."playerID" IS NOT NULL;