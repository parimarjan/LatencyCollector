/*+ NestLoop(ci it1 it2 kt mi1 n pi rt t) NestLoop(ci it1 kt mi1 n pi rt t) NestLoop(ci it1 kt mi1 n rt t) NestLoop(ci kt mi1 n rt t) HashJoin(ci kt mi1 rt t) NestLoop(ci kt mi1 t) HashJoin(kt mi1 t) NestLoop(mi1 t)  Leading((it2 ((it1 (((((mi1 t) kt) ci) rt) n)) pi))) SeqScan(it2) IndexScan(pi) SeqScan(it1) IndexScan(n) SeqScan(rt) IndexScan(ci) SeqScan(kt) BitmapScan(mi1) IndexScan(t)   */ explain (format json) SELECT mi1.info, n.name, COUNT(*)
FROM info_type as it2 CROSS JOIN ((info_type as it1 CROSS JOIN (((((movie_info as mi1 CROSS JOIN title as t) CROSS JOIN kind_type as kt) CROSS JOIN cast_info as ci) CROSS JOIN role_type as rt) CROSS JOIN name as n)) CROSS JOIN person_info as pi) WHERE
t.id = ci.movie_id
AND t.id = mi1.movie_id
AND mi1.info_type_id = it1.id
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.movie_id = mi1.movie_id
AND ci.role_id = rt.id
AND n.id = pi.person_id
AND pi.info_type_id = it2.id
AND (it1.id IN ('6'))
AND (it2.id IN ('21'))
AND (mi1.info IN ('Dolby Digital','Dolby','Perspecta Stereo','Stereo'))
AND (n.name ILIKE '%as%')
AND (kt.kind IN ('episode','movie','video movie'))
AND (rt.role IN ('actress','costume designer','director','miscellaneous crew'))
AND (t.production_year <= 1975)
AND (t.production_year >= 1925)
GROUP BY mi1.info, n.name
