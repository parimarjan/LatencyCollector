SELECT COUNT(*) as agg_0, MAX("coaches"."won") as agg_1 FROM "coaches"  WHERE "coaches"."coachID" IN ('nelsodo01', 'fitchbi01', 'karlge01', 'wilkele01', 'rileypa01') OR "coaches"."coachID" NOT LIKE '%fitchbi01%' OR "coaches"."coachID" LIKE '%wilkele0%1%'