
SELECT COUNT(*) as agg_0 FROM "halloffame" LEFT OUTER JOIN "players" ON "halloffame"."hofID" = "players"."hofID" LEFT OUTER JOIN "awardsplayers" ON "players"."playerID" = "awardsplayers"."playerID"  WHERE "players"."college" LIKE '%Non%e%' AND "halloffame"."votedBy" LIKE '%Nominati%ng%' AND "awardsplayers"."awardID" LIKE '%Le%ague%' AND "players"."nameNick" IN ('Lefty') AND "halloffame"."votedBy" IN ('BBWAA', 'Nominating Vote', 'Special Election') AND "halloffame"."ballots" >= 540.2831111307216 AND "players"."deathMonth" >= 10.153945985107885 AND "players"."birthCity" != '%Linoleumville%';