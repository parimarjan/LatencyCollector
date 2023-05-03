
SELECT AVG("region"."mail_code") as agg_0 FROM "corporation" LEFT OUTER JOIN "region" ON "corporation"."region_no" = "region"."region_no"  WHERE "region"."city" != '%Mombassa%';