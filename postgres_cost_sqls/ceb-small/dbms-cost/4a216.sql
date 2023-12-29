/*+ HashJoin(an ci it1 n pi1 rt) NestLoop(an ci it1 n pi1) NestLoop(an it1 n pi1) NestLoop(an n pi1) HashJoin(an pi1)  Leading((((it1 ((pi1 an) n)) ci) rt)) SeqScan(rt) IndexScan(ci) SeqScan(it1) IndexScan(n) BitmapScan(pi1) SeqScan(an)   */ explain (format json) SELECT COUNT(*)
FROM ((info_type as it1 CROSS JOIN ((person_info as pi1 CROSS JOIN aka_name as an) CROSS JOIN name as n)) CROSS JOIN cast_info as ci) CROSS JOIN role_type as rt WHERE
n.id = ci.person_id
AND ci.person_id = pi1.person_id
AND it1.id = pi1.info_type_id
AND n.id = pi1.person_id
AND n.id = an.person_id
AND ci.person_id = an.person_id
AND an.person_id = pi1.person_id
AND rt.id = ci.role_id
AND (n.gender in ('f','m'))
AND (n.name_pcode_nf in ('B2423','C246','C6521','D5432','J2562','J523','J525','J6216','L5416','M6262','R3125','T2565','W4352','Z3521'))
AND (ci.note in ('(archive footage)','(executive producer)','(production executive)','(writer)') OR ci.note IS NULL)
AND (rt.role in ('actor','actress','composer','director','miscellaneous crew','producer','production designer','writer'))
AND (it1.id in ('34'))
