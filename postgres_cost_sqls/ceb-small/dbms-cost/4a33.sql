/*+ NestLoop(an ci it1 n pi1 rt) NestLoop(an ci it1 n pi1) NestLoop(an it1 n pi1) NestLoop(an n pi1) NestLoop(an n)  Leading((((it1 ((n an) pi1)) ci) rt)) SeqScan(rt) IndexScan(ci) SeqScan(it1) IndexScan(pi1) SeqScan(n) IndexOnlyScan(an)   */ explain (format json) SELECT COUNT(*)
FROM ((info_type as it1 CROSS JOIN ((name as n CROSS JOIN aka_name as an) CROSS JOIN person_info as pi1)) CROSS JOIN cast_info as ci) CROSS JOIN role_type as rt WHERE
n.id = ci.person_id
AND ci.person_id = pi1.person_id
AND it1.id = pi1.info_type_id
AND n.id = pi1.person_id
AND n.id = an.person_id
AND ci.person_id = an.person_id
AND an.person_id = pi1.person_id
AND rt.id = ci.role_id
AND (n.gender in ('f'))
AND (n.name_pcode_nf in ('A5325','B5365','E4253','F1656','H3456','L2','M4145','N3246','W5324'))
AND (ci.note in ('(executive producer: TV2)','(production coordinator)','(publicist) (uncredited)','(script supervisor)','(voice)') OR ci.note IS NULL)
AND (rt.role in ('actress','miscellaneous crew','producer'))
AND (it1.id in ('19'))
