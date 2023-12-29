/*+ NestLoop(an ci it1 n pi1 rt) NestLoop(an ci it1 n pi1) NestLoop(an it1 n pi1) NestLoop(an n pi1) HashJoin(an pi1)  Leading((((((pi1 an) n) it1) ci) rt)) IndexScan(rt) IndexScan(ci) SeqScan(it1) IndexScan(n) BitmapScan(pi1) SeqScan(an)   */ explain (format json) SELECT COUNT(*)
FROM ((((person_info as pi1 CROSS JOIN aka_name as an) CROSS JOIN name as n) CROSS JOIN info_type as it1) CROSS JOIN cast_info as ci) CROSS JOIN role_type as rt WHERE
n.id = ci.person_id
AND ci.person_id = pi1.person_id
AND it1.id = pi1.info_type_id
AND n.id = pi1.person_id
AND n.id = an.person_id
AND ci.person_id = an.person_id
AND an.person_id = pi1.person_id
AND rt.id = ci.role_id
AND (n.gender in ('f') OR n.gender IS NULL)
AND (n.name_pcode_nf in ('A5136','H4525','J4262','M4252','M6356','N5242'))
AND (ci.note IS NULL)
AND (rt.role in ('actress'))
AND (it1.id in ('34'))
