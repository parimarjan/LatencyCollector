/*+ NestLoop(ci it1 it2 k kt mi1 mi2 mk n rt t) NestLoop(ci it1 it2 kt mi1 mi2 mk n rt t) NestLoop(ci it1 it2 kt mi1 mi2 n rt t) NestLoop(ci it1 kt mi1 mi2 n rt t) NestLoop(ci kt mi1 mi2 n rt t) NestLoop(ci kt mi1 mi2 rt t) NestLoop(ci kt mi1 mi2 t) NestLoop(kt mi1 mi2 t) NestLoop(kt mi2 t) NestLoop(mi2 t)  Leading(((((((rt ((((mi2 t) kt) mi1) ci)) n) it1) it2) mk) k)) IndexOnlyScan(k) IndexScan(mk) SeqScan(it2) SeqScan(it1) IndexScan(n) SeqScan(rt) IndexScan(ci) IndexScan(mi1) SeqScan(kt) SeqScan(mi2) IndexScan(t)   */ explain (format json) SELECT COUNT(*) FROM (((((role_type as rt CROSS JOIN ((((movie_info as mi2 CROSS JOIN title as t) CROSS JOIN kind_type as kt) CROSS JOIN movie_info as mi1) CROSS JOIN cast_info as ci)) CROSS JOIN name as n) CROSS JOIN info_type as it1) CROSS JOIN info_type as it2) CROSS JOIN movie_keyword as mk) CROSS JOIN keyword as k WHERE
t.id = ci.movie_id
AND t.id = mi1.movie_id
AND t.id = mi2.movie_id
AND t.id = mk.movie_id
AND k.id = mk.keyword_id
AND mi1.movie_id = mi2.movie_id
AND mi1.info_type_id = it1.id
AND mi2.info_type_id = it2.id
AND (it1.id in ('8'))
AND (it2.id in ('16'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info in ('Nigeria','USA'))
AND (mi2.info in ('Nigeria:2005','Nigeria:2006','Nigeria:2007','USA:1993','USA:1995','USA:1996','USA:1999','USA:2000','USA:2014'))
AND (kt.kind in ('movie','video movie'))
AND (rt.role in ('producer'))
AND (n.gender in ('f'))
AND (t.production_year <= 2015)
AND (t.production_year >= 1925)
