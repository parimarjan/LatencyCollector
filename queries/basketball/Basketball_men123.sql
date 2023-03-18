SELECT SUM("teams"."o_oreb") as agg_0, MIN("teams"."o_fga") as agg_1 FROM "teams" LEFT OUTER JOIN "coaches" ON "teams"."tmID" = "coaches"."tmID"  WHERE "teams"."d_reb" >= 0 AND "coaches"."lgID" NOT LIKE '%ABA%' AND ("coaches"."post_losses" <= 0.0 OR "coaches"."post_losses" <= 2.1315125878916796) AND "teams"."confLoss" BETWEEN 0 AND 25 AND ("teams"."bbtmID" IN ('SEA', 'DET', 'PHO', 'NYK', 'PHI', 'IND', 'ATL', 'LAL', 'CHI') OR "teams"."bbtmID" NOT LIKE '%DAL%')