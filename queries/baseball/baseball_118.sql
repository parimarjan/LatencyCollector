
SELECT AVG("teams"."SV") as agg_0 FROM "els_teamnames" LEFT OUTER JOIN "teamsfranchises" ON "els_teamnames"."franchid" = "teamsfranchises"."franchID" LEFT OUTER JOIN "teams" ON "els_teamnames"."teamid" = "teams"."teamID"  WHERE "els_teamnames"."teamid" NOT LIKE '%BR%O%' AND "teams"."LgWin" IN ('Y') AND "els_teamnames"."franchid" NOT LIKE '%CL%E%' AND ("teams"."teamIDlahman45" IN ('PIT', 'CIN', 'NYA', 'CHN', 'SLN', 'CHA', 'PHI', 'DET') OR "teams"."teamIDlahman45" IN ('CLE', 'DET', 'BOS', 'SLN', 'PHI', 'NYA', 'CHA') OR "teams"."teamIDlahman45" IN ('CLE')) AND ("teamsfranchises"."franchName" NOT LIKE '%Hartf%ord%' OR "teamsfranchises"."franchID" = '%BRD%') AND "els_teamnames"."lgid" NOT LIKE '%A%A%' AND "teams"."name" = '%Worcester Ruby Legs%';