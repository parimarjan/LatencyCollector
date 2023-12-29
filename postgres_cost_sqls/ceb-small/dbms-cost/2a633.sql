/*+ NestLoop(ci it1 it2 k kt mi1 mi2 mk n rt t) NestLoop(ci it1 it2 kt mi1 mi2 mk n rt t) NestLoop(ci it1 it2 kt mi1 mi2 n rt t) HashJoin(ci it1 it2 kt mi1 mi2 rt t) NestLoop(ci it1 it2 kt mi1 mi2 t) NestLoop(it1 it2 kt mi1 mi2 t) NestLoop(it1 kt mi1 mi2 t) NestLoop(kt mi1 mi2 t) HashJoin(kt mi2 t) NestLoop(mi2 t)  Leading(((((((((((mi2 t) kt) mi1) it1) it2) ci) rt) n) mk) k)) IndexOnlyScan(k) IndexScan(mk) IndexScan(n) SeqScan(rt) IndexScan(ci) SeqScan(it2) SeqScan(it1) IndexScan(mi1) SeqScan(kt) BitmapScan(mi2) IndexScan(t)   */ explain (format json) SELECT COUNT(*) FROM (((((((((movie_info as mi2 CROSS JOIN title as t) CROSS JOIN kind_type as kt) CROSS JOIN movie_info as mi1) CROSS JOIN info_type as it1) CROSS JOIN info_type as it2) CROSS JOIN cast_info as ci) CROSS JOIN role_type as rt) CROSS JOIN name as n) CROSS JOIN movie_keyword as mk) CROSS JOIN keyword as k WHERE
t.id = ci.movie_id
AND t.id = mi1.movie_id
AND t.id = mi2.movie_id
AND t.id = mk.movie_id
AND k.id = mk.keyword_id
AND mi1.movie_id = mi2.movie_id
AND mi1.info_type_id = it1.id
AND mi2.info_type_id = it2.id
AND (it1.id in ('2'))
AND (it2.id in ('1'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info in ('Color'))
AND (mi2.info in ('45','UK:30','USA:11','USA:5'))
AND (kt.kind in ('episode','movie','video movie'))
AND (rt.role in ('actress','production designer'))
AND (n.gender in ('m'))
AND (t.production_year <= 2015)
AND (t.production_year >= 1975)
