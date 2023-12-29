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
AND (n.gender in ('f','m'))
AND (n.name_pcode_nf in ('A5632','A6561','B6515','C2414','C6253','D1632','G1513','G4152','J1646','J36','J5142','J5261','K5164','L2625','M3163','M6264','O4262','R1524','R1632','R3132','R3254','R5341','T2352','Z246'))
AND (ci.note in ('(associate producer)','(credit only)','(executive producer)','(producer)','(story consultant)','(uncredited)','(voice) (uncredited)','(voice)','(voice: English version)') OR ci.note IS NULL)
AND (rt.role in ('actor','actress','editor','miscellaneous crew','producer','writer'))
AND (it1.id in ('26'))
