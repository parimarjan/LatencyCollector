/*+ NestLoop(an ci it1 n pi1 rt) NestLoop(an ci it1 n pi1) NestLoop(an it1 n pi1) NestLoop(an n pi1) NestLoop(n pi1)  Leading((((it1 ((pi1 n) an)) ci) rt)) SeqScan(rt) IndexScan(ci) SeqScan(it1) IndexOnlyScan(an) BitmapScan(pi1) IndexScan(n)   */ explain (format json) SELECT COUNT(*)
FROM ((info_type as it1 CROSS JOIN ((person_info as pi1 CROSS JOIN name as n) CROSS JOIN aka_name as an)) CROSS JOIN cast_info as ci) CROSS JOIN role_type as rt WHERE
n.id = ci.person_id
AND ci.person_id = pi1.person_id
AND it1.id = pi1.info_type_id
AND n.id = pi1.person_id
AND n.id = an.person_id
AND ci.person_id = an.person_id
AND an.person_id = pi1.person_id
AND rt.id = ci.role_id
AND (n.gender IS NULL)
AND (n.name_pcode_nf in ('A4163','A5362','B6524','B6535','C6231','F6521','M5456','R1632','R2631') OR n.name_pcode_nf IS NULL)
AND (ci.note in ('(executive producer)','(producer)','(production assistant)') OR ci.note IS NULL)
AND (rt.role in ('cinematographer','director','editor','miscellaneous crew','producer'))
AND (it1.id in ('31'))
