SELECT SUM("gasstations"."GasStationID") as agg_0, AVG("gasstations"."GasStationID" + "gasstations"."ChainID") as agg_1 FROM "gasstations"  WHERE "gasstations"."Country" = 'CZE' OR "gasstations"."ChainID" <= 3