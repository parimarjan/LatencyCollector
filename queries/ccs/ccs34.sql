SELECT AVG("customers"."CustomerID") as agg_0 FROM "customers" LEFT OUTER JOIN "yearmonth" ON "customers"."CustomerID" = "yearmonth"."CustomerID"  WHERE "customers"."Segment" NOT LIKE '%KAM%' AND "yearmonth"."Date" != 201310