SELECT SUM("teams"."d_oreb") as agg_0, AVG("teams"."o_fga") as agg_1, SUM("teams"."neutLoss" + "teams"."divLoss") as agg_2 FROM "teams"  WHERE "teams"."playoff" != 'DT' AND "teams"."won" = 34 AND "teams"."o_3pa" <= 84