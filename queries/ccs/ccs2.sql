SELECT MAX("gasstations"."ChainID") as agg_0 FROM "gasstations"  WHERE "gasstations"."Segment" IN ('Noname', 'Other', 'Discount') AND "gasstations"."Country" = 'CZE' AND "gasstations"."Country" IN ('CZE') AND "gasstations"."ChainID" >= 50