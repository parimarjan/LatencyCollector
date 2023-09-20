
SELECT AVG("teams"."ERA") as agg_0 FROM "managershalf" LEFT OUTER JOIN "managers" ON "managershalf"."managerID" = "managers"."managerID" LEFT OUTER JOIN "teams" ON "managers"."teamID" = "teams"."teamID" LEFT OUTER JOIN "salaries" ON "teams"."teamID" = "salaries"."teamID" LEFT OUTER JOIN "allstarfull" ON "teams"."teamID" = "allstarfull"."teamID"  WHERE "managers"."teamID" NOT LIKE '%P%HA%' AND ("salaries"."lgID" = '%NL%' OR ("salaries"."lgID" LIKE '%AL%' AND "salaries"."lgID" NOT LIKE '%AL%')) AND "teams"."lgID" IN ('AA', 'UA', 'AL', 'PL') AND "allstarfull"."teamID" IS NOT NULL;