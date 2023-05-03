
SELECT AVG("teams"."3B") as agg_0 FROM "batting" LEFT OUTER JOIN "teams" ON "batting"."teamID" = "teams"."teamID" LEFT OUTER JOIN "els_teamnames" ON "teams"."teamID" = "els_teamnames"."teamid" LEFT OUTER JOIN "seriespost" ON "teams"."teamID" = "seriespost"."teamIDwinner"  WHERE "els_teamnames"."teamid" LIKE '%HOU%' AND "batting"."lgID" = '%UA%' AND "seriespost"."losses" >= 2 AND "els_teamnames"."lgid" LIKE '%N%L%' AND "teams"."attendance" >= 4414748.99693089;