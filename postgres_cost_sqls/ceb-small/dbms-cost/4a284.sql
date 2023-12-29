/*+ NestLoop(an ci it1 n pi1 rt) NestLoop(an ci n pi1 rt) NestLoop(an ci n pi1) NestLoop(an n pi1) NestLoop(an n)  Leading((it1 (rt (((n an) pi1) ci)))) SeqScan(it1) SeqScan(rt) IndexScan(ci) IndexScan(pi1) SeqScan(n) IndexOnlyScan(an)   */ explain (format json) SELECT COUNT(*)
FROM info_type as it1 CROSS JOIN (role_type as rt CROSS JOIN (((name as n CROSS JOIN aka_name as an) CROSS JOIN person_info as pi1) CROSS JOIN cast_info as ci)) WHERE
n.id = ci.person_id
AND ci.person_id = pi1.person_id
AND it1.id = pi1.info_type_id
AND n.id = pi1.person_id
AND n.id = an.person_id
AND ci.person_id = an.person_id
AND an.person_id = pi1.person_id
AND rt.id = ci.role_id
AND (n.gender in ('f') OR n.gender IS NULL)
AND (n.name_pcode_nf in ('B1642','B6352','J3261','M5456','M6453','M6525','M6536','M6563'))
AND (ci.note IS NULL)
AND (rt.role in ('actress'))
AND (it1.id in ('25'))
