
SELECT SUM("batting"."SF") as agg_0 FROM "batting" LEFT OUTER JOIN "players" ON "batting"."playerID" = "players"."playerID" LEFT OUTER JOIN "schoolsplayers" ON "players"."playerID" = "schoolsplayers"."playerID" LEFT OUTER JOIN "pitching" ON "players"."playerID" = "pitching"."playerID" LEFT OUTER JOIN "fieldingof" ON "players"."playerID" = "fieldingof"."playerID"  WHERE "players"."nameFirst" IN ('Bill', 'Bob', 'Mike', 'Ed', 'Jim', 'Frank', 'Tom', 'Joe', 'John') AND "players"."deathState" LIKE '%T%X%' AND "batting"."G" BETWEEN 3 AND 7 AND "schoolsplayers"."playerID" IS NOT NULL AND "pitching"."playerID" IS NOT NULL AND "fieldingof"."playerID" IS NOT NULL;