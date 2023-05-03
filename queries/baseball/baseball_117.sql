
SELECT SUM("pitching"."BFP") as agg_0 FROM "players" LEFT OUTER JOIN "fielding" ON "players"."playerID" = "fielding"."playerID" LEFT OUTER JOIN "pitching" ON "players"."playerID" = "pitching"."playerID" LEFT OUTER JOIN "awardsplayers" ON "players"."playerID" = "awardsplayers"."playerID" LEFT OUTER JOIN "awardsshareplayers" ON "players"."playerID" = "awardsshareplayers"."playerID" LEFT OUTER JOIN "fieldingpost" ON "players"."playerID" = "fieldingpost"."playerID" LEFT OUTER JOIN "battingpost" ON "players"."playerID" = "battingpost"."playerID"  WHERE "battingpost"."BB" <= 0 AND ("awardsshareplayers"."awardID" NOT LIKE '%R%ookie%' OR "awardsshareplayers"."awardID" != '%Rookie of the Year%' OR "awardsshareplayers"."awardID" NOT LIKE '%Year%') AND "pitching"."H" BETWEEN 19 AND 170 AND "awardsshareplayers"."lgID" NOT LIKE '%A%L%' AND ("awardsplayers"."playerID" != '%clemero01%' OR ("awardsplayers"."yearID" >= 1942 AND "awardsplayers"."playerID" = '%vaughar01%')) AND "awardsshareplayers"."playerID" IN ('bondsba01', 'willite01', 'aaronha01') AND "fielding"."playerID" IS NOT NULL AND "fieldingpost"."playerID" IS NOT NULL;