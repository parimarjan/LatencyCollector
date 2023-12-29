/*+ HashJoin(an ci it1 n pi1 rt) NestLoop(an ci it1 n pi1) NestLoop(an it1 n pi1) NestLoop(an n pi1) HashJoin(an n)  Leading((((it1 ((an n) pi1)) ci) rt)) SeqScan(rt) IndexScan(ci) SeqScan(it1) IndexScan(pi1) SeqScan(an) SeqScan(n)   */ explain (format json) SELECT COUNT(*)
FROM ((info_type as it1 CROSS JOIN ((aka_name as an CROSS JOIN name as n) CROSS JOIN person_info as pi1)) CROSS JOIN cast_info as ci) CROSS JOIN role_type as rt WHERE
n.id = ci.person_id
AND ci.person_id = pi1.person_id
AND it1.id = pi1.info_type_id
AND n.id = pi1.person_id
AND n.id = an.person_id
AND ci.person_id = an.person_id
AND an.person_id = pi1.person_id
AND rt.id = ci.role_id
AND (n.gender in ('m'))
AND (n.name_pcode_nf in ('A21','A3135','E1543','F6323','H6352','J52','K1516','K4143','M2416','P3624','P3635','R5341','S6235'))
AND (ci.note in ('(adaptation)','(archive footage)','(executive producer)','(producer)','(story)','(uncredited)') OR ci.note IS NULL)
AND (rt.role in ('actor','composer','director','producer','production designer','writer'))
AND (it1.id in ('22'))
