
SELECT MAX("appearances"."G_batting") as agg_0 FROM "halloffame" LEFT OUTER JOIN "players" ON "halloffame"."hofID" = "players"."hofID" LEFT OUTER JOIN "appearances" ON "players"."playerID" = "appearances"."playerID" LEFT OUTER JOIN "pitchingpost" ON "players"."playerID" = "pitchingpost"."playerID" LEFT OUTER JOIN "fielding" ON "players"."playerID" = "fielding"."playerID" LEFT OUTER JOIN "fieldingof" ON "players"."playerID" = "fieldingof"."playerID" LEFT OUTER JOIN "pitching" ON "players"."playerID" = "pitching"."playerID"  WHERE "players"."birthYear" BETWEEN 1873.0202819256233 AND 1881.2695291535028 AND ("appearances"."lgID" LIKE '%AL%' OR ("appearances"."lgID" IN ('UA', 'PL', 'AL') AND "appearances"."lgID" IN ('UA', 'NL', 'AA', 'PL'))) AND "players"."nameFirst" LIKE '%Joh%n%' AND "fielding"."CS" BETWEEN 2.821723747654554 AND 6.546717236163751 AND ("fieldingof"."stint" BETWEEN 1 AND 2 OR "fieldingof"."stint" = 1) AND ("fielding"."lgID" IN ('NL', 'FL', 'PL') OR "fielding"."lgID" IN ('AL', 'NL', 'UA', 'PL') OR "fielding"."lgID" LIKE '%AA%') AND "players"."nameFirst" != '%Jess%' AND "pitchingpost"."playerID" IS NOT NULL AND "pitching"."playerID" IS NOT NULL;