
SELECT MAX("battingpost"."SF") as agg_0 FROM "fieldingpost" LEFT OUTER JOIN "players" ON "fieldingpost"."playerID" = "players"."playerID" LEFT OUTER JOIN "battingpost" ON "players"."playerID" = "battingpost"."playerID"  WHERE "fieldingpost"."teamID" LIKE '%ARI%' AND "battingpost"."playerID" != '%yoshima01%' AND "battingpost"."SB" != 0 AND ("players"."bats" IN ('R') OR "players"."bats" IN ('B') OR "players"."bats" IN ('R', 'B')) AND "players"."birthYear" BETWEEN 1921.0969367861676 AND 1926.716562378403 AND "battingpost"."H" != 0;