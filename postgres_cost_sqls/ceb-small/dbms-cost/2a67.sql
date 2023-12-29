/*+ NestLoop(ci it1 it2 k kt mi1 mi2 mk n rt t) NestLoop(ci it1 it2 kt mi1 mi2 mk n rt t) NestLoop(ci it1 it2 kt mi1 mi2 n rt t) HashJoin(ci it1 it2 kt mi1 mi2 rt t) NestLoop(ci it1 it2 kt mi1 mi2 t) NestLoop(it1 it2 kt mi1 mi2 t) NestLoop(it1 kt mi1 mi2 t) NestLoop(kt mi1 mi2 t) HashJoin(kt mi2 t) HashJoin(kt t)  Leading(((((((it2 (it1 ((mi2 (t kt)) mi1))) ci) rt) n) mk) k)) IndexOnlyScan(k) IndexScan(mk) IndexScan(n) SeqScan(rt) IndexScan(ci) SeqScan(it2) SeqScan(it1) IndexScan(mi1) BitmapScan(mi2) SeqScan(t) SeqScan(kt)   */ explain (format json) SELECT COUNT(*) FROM (((((info_type as it2 CROSS JOIN (info_type as it1 CROSS JOIN ((movie_info as mi2 CROSS JOIN (title as t CROSS JOIN kind_type as kt)) CROSS JOIN movie_info as mi1))) CROSS JOIN cast_info as ci) CROSS JOIN role_type as rt) CROSS JOIN name as n) CROSS JOIN movie_keyword as mk) CROSS JOIN keyword as k WHERE
t.id = ci.movie_id
AND t.id = mi1.movie_id
AND t.id = mi2.movie_id
AND t.id = mk.movie_id
AND k.id = mk.keyword_id
AND mi1.movie_id = mi2.movie_id
AND mi1.info_type_id = it1.id
AND mi2.info_type_id = it2.id
AND (it1.id in ('3'))
AND (it2.id in ('4'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info in ('Action','Animation','Biography','Comedy','Crime','History','Mystery','Reality-TV','Short'))
AND (mi2.info in ('Filipino','French','German','Hindi','Japanese','Korean','Spanish','Swedish','Tagalog'))
AND (kt.kind in ('episode','movie','video movie'))
AND (rt.role in ('composer','writer'))
AND (n.gender in ('m') OR n.gender IS NULL)
AND (t.production_year <= 2015)
AND (t.production_year >= 1990)
