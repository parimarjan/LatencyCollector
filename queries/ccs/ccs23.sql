SELECT MAX("customers"."CustomerID") as agg_0 FROM "customers"  WHERE "customers"."Currency" IN ('CZK') AND "customers"."Segment" != 'SME' AND "customers"."Currency" LIKE '%C%ZK%' AND "customers"."CustomerID" <= 1562710 AND "customers"."Segment" IN ('KAM')