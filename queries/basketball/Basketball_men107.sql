SELECT MAX("teams"."d_reb" + "series_post"."year") as agg_0, COUNT(*) as agg_1, MIN("coaches"."post_losses") as agg_2 FROM "awards_coaches" LEFT OUTER JOIN "coaches" ON "awards_coaches"."coachID" = "coaches"."coachID" LEFT OUTER JOIN "teams" ON "coaches"."tmID" = "teams"."tmID" LEFT OUTER JOIN "series_post" ON "teams"."tmID" = "series_post"."tmIDWinner"  WHERE "awards_coaches"."award" NOT LIKE '%of%'