SELECT MAX("corporation"."country" + "corporation"."phone_no") as agg_0 FROM "corporation" LEFT OUTER JOIN "region" ON "corporation"."region_no" = "region"."region_no"  WHERE "region"."state_prov" NOT LIKE '%O%N%' OR "region"."country" LIKE '%J%a%'