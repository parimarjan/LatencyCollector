/*+ NestLoop(ci it1 it2 kt mi1 n pi rt t) NestLoop(ci it1 kt mi1 n pi rt t) NestLoop(ci kt mi1 n pi rt t) NestLoop(ci kt n pi rt t) NestLoop(ci n pi rt t) NestLoop(ci n pi rt) NestLoop(ci n pi) NestLoop(n pi)  Leading(((((((((n pi) ci) rt) t) kt) mi1) it1) it2)) SeqScan(it2) SeqScan(it1) IndexScan(mi1) SeqScan(kt) IndexScan(t) SeqScan(rt) IndexScan(ci) SeqScan(n) IndexScan(pi)   */ explain (format json) SELECT mi1.info, n.name, COUNT(*)
FROM (((((((name as n CROSS JOIN person_info as pi) CROSS JOIN cast_info as ci) CROSS JOIN role_type as rt) CROSS JOIN title as t) CROSS JOIN kind_type as kt) CROSS JOIN movie_info as mi1) CROSS JOIN info_type as it1) CROSS JOIN info_type as it2 WHERE
t.id = ci.movie_id
AND t.id = mi1.movie_id
AND mi1.info_type_id = it1.id
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.movie_id = mi1.movie_id
AND ci.role_id = rt.id
AND n.id = pi.person_id
AND pi.info_type_id = it2.id
AND (it1.id IN ('3','4','5'))
AND (it2.id IN ('22'))
AND (mi1.info IN ('Action','Animation','Australia:G','Australia:M','Canada:G','Canada:PG','Crime','Drama','Filipino','Portugal:M/12','Short','Spanish','Sweden:11','UK:X','USA:Passed','USA:R','USA:TV-G','West Germany:18'))
AND (n.name ILIKE '%red%')
AND (kt.kind IN ('episode','movie','tv movie'))
AND (rt.role IN ('actor','actress','composer','costume designer'))
AND (t.production_year <= 1975)
AND (t.production_year >= 1925)
GROUP BY mi1.info, n.name
