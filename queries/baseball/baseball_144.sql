
SELECT MIN("teams"."ERA") as agg_0 FROM "batting" LEFT OUTER JOIN "teams" ON "batting"."teamID" = "teams"."teamID" LEFT OUTER JOIN "players" ON "batting"."playerID" = "players"."playerID" LEFT OUTER JOIN "awardsplayers" ON "players"."playerID" = "awardsplayers"."playerID"  WHERE "teams"."IPouts" >= 4337 AND "batting"."SO" >= 155.20832799351427 AND "players"."deathDay" >= 9.874409299579556 AND ("awardsplayers"."notes" LIKE '%RF%' OR ("awardsplayers"."lgID" != '%ML%' AND "awardsplayers"."notes" NOT LIKE '%P2%')) AND "batting"."lgID" IN ('NL', 'UA', 'AL');