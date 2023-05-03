
SELECT AVG("players"."birthMonth") as agg_0 FROM "fieldingpost" LEFT OUTER JOIN "players" ON "fieldingpost"."playerID" = "players"."playerID" LEFT OUTER JOIN "awardsplayers" ON "players"."playerID" = "awardsplayers"."playerID"  WHERE "fieldingpost"."round" != '%ALWC%' AND "awardsplayers"."lgID" IN ('AA', 'NL') AND "players"."hofID" = '%portebo01h%' AND "awardsplayers"."awardID" = '%Pitching Triple Crown%' AND "players"."nameFirst" LIKE '%Bi%ll%';