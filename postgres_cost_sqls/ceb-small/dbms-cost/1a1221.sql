/*+ NestLoop(ci it1 it2 kt mi1 mi2 n rt t) NestLoop(ci it1 kt mi1 mi2 n rt t) NestLoop(ci kt mi1 mi2 n rt t) HashJoin(ci kt mi1 mi2 rt t) NestLoop(ci kt mi1 mi2 t) NestLoop(kt mi1 mi2 t) NestLoop(mi1 mi2 t) MergeJoin(mi1 mi2)  Leading((it2 (it1 ((((((mi1 mi2) t) kt) ci) rt) n)))) SeqScan(it2) SeqScan(it1) IndexScan(n) SeqScan(rt) IndexScan(ci) SeqScan(kt) IndexScan(t) BitmapScan(mi1) BitmapScan(mi2)   */ explain (format json) SELECT COUNT(*) FROM info_type as it2 CROSS JOIN (info_type as it1 CROSS JOIN ((((((movie_info as mi1 CROSS JOIN movie_info as mi2) CROSS JOIN title as t) CROSS JOIN kind_type as kt) CROSS JOIN cast_info as ci) CROSS JOIN role_type as rt) CROSS JOIN name as n)) WHERE
t.id = ci.movie_id
AND t.id = mi1.movie_id
AND t.id = mi2.movie_id
AND mi1.movie_id = mi2.movie_id
AND mi1.info_type_id = it1.id
AND mi2.info_type_id = it2.id
AND it1.id = '3'
AND it2.id = '7'
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND mi1.info IN ('Mystery','Short')
AND mi2.info IN ('OFM:35 mm','PFM:35 mm')
AND kt.kind IN ('episode','movie','video movie')
AND rt.role IN ('composer')
AND n.gender IN ('f')
AND t.production_year <= 2015
AND 1975 < t.production_year
