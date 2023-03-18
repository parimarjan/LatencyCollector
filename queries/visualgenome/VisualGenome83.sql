SELECT MIN("IMG_REL"."PRED_CLASS_ID" + "IMG_REL"."OBJ1_SAMPLE_ID") as agg_0, SUM("IMG_REL"."IMG_ID" + "IMG_REL"."OBJ1_SAMPLE_ID") as agg_1, AVG("IMG_REL"."IMG_ID" + "IMG_REL"."OBJ2_SAMPLE_ID") as agg_2 FROM "IMG_REL"  WHERE "IMG_REL"."OBJ1_SAMPLE_ID" BETWEEN 9 AND 18 AND "IMG_REL"."OBJ2_SAMPLE_ID" <= 18