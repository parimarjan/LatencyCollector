SELECT AVG("IMG_OBJ_ATT"."IMG_ID" + "IMG_OBJ"."Y") as agg_0, MIN("IMG_OBJ"."X" + "IMG_OBJ_ATT"."ATT_CLASS_ID") as agg_1, COUNT(*) as agg_2 FROM "IMG_OBJ" LEFT OUTER JOIN "IMG_OBJ_ATT" ON "IMG_OBJ"."IMG_ID" = "IMG_OBJ_ATT"."IMG_ID"  WHERE "IMG_OBJ"."W" BETWEEN 3 AND 77