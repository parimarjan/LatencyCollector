/*+ NestLoop(ci it1 it2 kt mi1 mi2 n rt t) HashJoin(ci it1 it2 kt mi1 mi2 rt t) NestLoop(ci it1 it2 kt mi1 mi2 t) NestLoop(it1 it2 kt mi1 mi2 t) NestLoop(it1 kt mi1 mi2 t) NestLoop(kt mi1 mi2 t) HashJoin(kt mi2 t) NestLoop(mi2 t)  Leading(((((((((mi2 t) kt) mi1) it1) it2) ci) rt) n)) IndexScan(n) SeqScan(rt) IndexScan(ci) SeqScan(it2) SeqScan(it1) IndexScan(mi1) SeqScan(kt) BitmapScan(mi2) IndexScan(t)   */ explain (format json) SELECT COUNT(*) FROM (((((((movie_info as mi2 CROSS JOIN title as t) CROSS JOIN kind_type as kt) CROSS JOIN movie_info as mi1) CROSS JOIN info_type as it1) CROSS JOIN info_type as it2) CROSS JOIN cast_info as ci) CROSS JOIN role_type as rt) CROSS JOIN name as n WHERE
t.id = ci.movie_id
AND t.id = mi1.movie_id
AND t.id = mi2.movie_id
AND mi1.movie_id = mi2.movie_id
AND mi1.info_type_id = it1.id
AND mi2.info_type_id = it2.id
AND it1.id = '3'
AND it2.id = '5'
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND mi1.info IN ('Comedy','Crime','Drama','Romance')
AND mi2.info IN ('Australia:G','Australia:PG','Finland:K-16','Sweden:15','UK:PG','UK:U','USA:Passed')
AND kt.kind IN ('episode','movie','tv movie')
AND rt.role IN ('writer')
AND n.gender IN ('m')
AND t.production_year <= 1975
AND 1925 < t.production_year
