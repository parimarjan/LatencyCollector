SELECT SUM("customers"."CustomerID") as agg_0, SUM("customers"."CustomerID") as agg_1, MAX("customers"."CustomerID") as agg_2 FROM "customers"  WHERE "customers"."Segment" NOT LIKE '%LAM%' AND "customers"."Segment" IN ('SME', 'KAM')