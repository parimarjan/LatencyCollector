SELECT MAX("provider"."provider_code" + "provider"."country") as agg_0 FROM "provider"  WHERE "provider"."country" BETWEEN nan AND nan AND "provider"."expr_dt" = '2000-10-12 10:41:19' AND "provider"."provider_name" IN ('Prov. Giant Ope', 'Prov. Giant Res', 'Prov. Giant Que', 'Prov. Giant Mac', 'Prov. Giant Sai', 'Prov. Giant Nee', 'Prov. Computer', 'Prov. Imperial', 'Prov. Giant Tra') AND "provider"."issue_dt" IN ('1999-10-13 10:41:18', '1999-10-13 10:41:22', '1999-10-13 10:41:20', '1999-10-13 10:41:24', '1999-10-13 10:41:23', '1999-10-13 10:41:19')