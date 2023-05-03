
SELECT AVG("schoolsplayers"."yearMax") as agg_0 FROM "schoolsplayers" LEFT OUTER JOIN "players" ON "schoolsplayers"."playerID" = "players"."playerID" LEFT OUTER JOIN "halloffame" ON "players"."hofID" = "halloffame"."hofID" LEFT OUTER JOIN "awardsplayers" ON "players"."playerID" = "awardsplayers"."playerID" LEFT OUTER JOIN "schools" ON "schoolsplayers"."schoolID" = "schools"."schoolID" LEFT OUTER JOIN "awardsshareplayers" ON "players"."playerID" = "awardsshareplayers"."playerID"  WHERE ("halloffame"."votes" >= 1.6902966489978635 OR "halloffame"."votes" <= 264.9260078722149 OR "halloffame"."votes" BETWEEN 0.5215508819887684 AND 3.479867808534176) AND ("schoolsplayers"."schoolID" NOT LIKE '%stmarysc%a%' OR ("schoolsplayers"."schoolID" LIKE '%michigan%' AND "schoolsplayers"."schoolID" LIKE '%te%xas%')) AND "awardsshareplayers"."votesFirst" BETWEEN 0.0 AND 0.11159121615883139 AND ("awardsshareplayers"."pointsWon" <= 33 OR "awardsshareplayers"."pointsWon" <= 112 OR "awardsshareplayers"."pointsWon" >= 18) AND "awardsplayers"."playerID" IN ('dimagjo01', 'ruthba01', 'musiast01', 'schmimi01') AND ("awardsplayers"."lgID" IN ('ML') OR "awardsplayers"."yearID" <= 1893 OR "awardsplayers"."lgID" IN ('NL')) AND "schools"."schoolID" IS NOT NULL;