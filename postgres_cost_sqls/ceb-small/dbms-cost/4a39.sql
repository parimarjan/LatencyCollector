/*+ NestLoop(an ci it1 n pi1 rt) NestLoop(an ci it1 n pi1) NestLoop(an it1 n pi1) NestLoop(an n pi1) NestLoop(n pi1)  Leading((((((pi1 n) an) it1) ci) rt)) IndexScan(rt) IndexScan(ci) SeqScan(it1) IndexOnlyScan(an) BitmapScan(pi1) IndexScan(n)   */ explain (format json) SELECT COUNT(*)
FROM ((((person_info as pi1 CROSS JOIN name as n) CROSS JOIN aka_name as an) CROSS JOIN info_type as it1) CROSS JOIN cast_info as ci) CROSS JOIN role_type as rt WHERE
n.id = ci.person_id
AND ci.person_id = pi1.person_id
AND it1.id = pi1.info_type_id
AND n.id = pi1.person_id
AND n.id = an.person_id
AND ci.person_id = an.person_id
AND an.person_id = pi1.person_id
AND rt.id = ci.role_id
AND (n.gender in ('f'))
AND (n.name_pcode_nf in ('A4214','C5326','C6543','E4524','E4536','F6531','J4236','J5242','L6252','M6256','M6323','O4212','R2456','V6251'))
AND (ci.note in ('(writer)') OR ci.note IS NULL)
AND (rt.role in ('actress','writer'))
AND (it1.id in ('31'))
