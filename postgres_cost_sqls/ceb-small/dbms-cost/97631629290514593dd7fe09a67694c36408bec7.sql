/*+ NestLoop(ci it1 it2 kt mi1 n pi rt t) NestLoop(ci it1 kt mi1 n pi rt t) NestLoop(ci it1 kt mi1 n rt t) NestLoop(ci kt mi1 n rt t) HashJoin(ci kt mi1 rt t) NestLoop(ci kt mi1 t) HashJoin(kt mi1 t) HashJoin(kt t)  Leading((it2 ((it1 ((((mi1 (t kt)) ci) rt) n)) pi))) SeqScan(it2) IndexScan(pi) SeqScan(it1) IndexScan(n) SeqScan(rt) IndexScan(ci) BitmapScan(mi1) SeqScan(t) SeqScan(kt)   */ explain (format json) SELECT mi1.info, n.name, COUNT(*)
FROM info_type as it2 CROSS JOIN ((info_type as it1 CROSS JOIN ((((movie_info as mi1 CROSS JOIN (title as t CROSS JOIN kind_type as kt)) CROSS JOIN cast_info as ci) CROSS JOIN role_type as rt) CROSS JOIN name as n)) CROSS JOIN person_info as pi) WHERE
t.id = ci.movie_id
AND t.id = mi1.movie_id
AND mi1.info_type_id = it1.id
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.movie_id = mi1.movie_id
AND ci.role_id = rt.id
AND n.id = pi.person_id
AND pi.info_type_id = it2.id
AND (it1.id IN ('2'))
AND (it2.id IN ('17'))
AND (mi1.info IN ('Color'))
AND (n.name ILIKE '%se%')
AND (kt.kind IN ('tv movie','video game','video movie'))
AND (rt.role IN ('composer','editor','production designer'))
AND (t.production_year <= 1990)
AND (t.production_year >= 1950)
GROUP BY mi1.info, n.name
