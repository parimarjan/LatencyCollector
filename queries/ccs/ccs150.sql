SELECT MIN("products"."ProductID") as agg_0, MIN("products"."ProductID") as agg_1 FROM "products"  WHERE "products"."Description" LIKE '%fo%r%' AND "products"."Description" NOT LIKE '%Mýtné%' AND "products"."ProductID" >= 504