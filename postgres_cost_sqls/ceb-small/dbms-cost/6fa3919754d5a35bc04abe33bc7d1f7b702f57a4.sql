/*+ NestLoop(ci it1 kt mi1 n rt t) NestLoop(ci kt mi1 n rt t) NestLoop(ci kt n rt t) NestLoop(ci n rt t) NestLoop(ci n rt) NestLoop(ci n)  Leading(((((((n ci) rt) t) kt) mi1) it1)) SeqScan(it1) IndexScan(mi1) SeqScan(kt) IndexScan(t) SeqScan(rt) SeqScan(n) IndexScan(ci)   */ explain (format json) SELECT n.name, mi1.info, MIN(t.production_year), MAX(t.production_year)
FROM (((((name as n CROSS JOIN cast_info as ci) CROSS JOIN role_type as rt) CROSS JOIN title as t) CROSS JOIN kind_type as kt) CROSS JOIN movie_info as mi1) CROSS JOIN info_type as it1 WHERE
t.id = ci.movie_id
AND t.id = mi1.movie_id
AND mi1.info_type_id = it1.id
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.movie_id = mi1.movie_id
AND ci.role_id = rt.id
AND (it1.id IN ('2','3'))
AND (mi1.info IN ('Action','Adventure','Black and White','Color','Comedy','Crime','Drama','Family','Horror','Romance'))
AND (n.name ILIKE '%she%')
AND (kt.kind IN ('episode','movie','tv series'))
AND (rt.role IN ('actress','director','producer'))
GROUP BY mi1.info, n.name
