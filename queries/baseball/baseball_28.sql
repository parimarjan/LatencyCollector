
SELECT SUM("battingpost"."CS") as agg_0 FROM "battingpost" LEFT OUTER JOIN "players" ON "battingpost"."playerID" = "players"."playerID" LEFT OUTER JOIN "batting" ON "players"."playerID" = "batting"."playerID"  WHERE "battingpost"."teamID" IN ('CIN') AND "players"."nameNote" != '%born Edward William Majewski%' AND "players"."nameFirst" LIKE '%Mik%e%' AND ("batting"."SO" BETWEEN 11.75155889963151 AND 104.46162510668562 OR ("batting"."lgID" IS NOT NULL AND "batting"."SO" >= 10.50290056832428)) AND "batting"."teamID" NOT LIKE '%MI%N%' AND "batting"."RBI" >= 53.896515636614225 AND "players"."deathCountry" = '%uSA%';