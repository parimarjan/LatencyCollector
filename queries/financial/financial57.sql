SELECT MIN("card"."disp_id") as agg_0, COUNT(*) as agg_1 FROM "card" LEFT OUTER JOIN "disp" ON "card"."disp_id" = "disp"."disp_id"  WHERE "card"."issued" IN ('1998-10-01', '1998-12-08', '1998-04-16', '1998-09-29', '1998-07-07', '1998-02-26', '1998-10-11', '1998-08-16', '1998-12-23')