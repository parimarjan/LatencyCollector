/*+ NestLoop(ci it1 it2 k kt mi1 mi2 mk n rt t) NestLoop(ci it1 it2 k kt mi1 mi2 mk rt t) NestLoop(ci it1 it2 k kt mi1 mi2 mk t) NestLoop(ci it1 k kt mi1 mi2 mk t) NestLoop(ci it1 k kt mi1 mk t) NestLoop(it1 k kt mi1 mk t) NestLoop(k kt mi1 mk t) NestLoop(k kt mk t) NestLoop(k mk t) NestLoop(k mk)  Leading(((((((((((k mk) t) kt) mi1) it1) ci) mi2) it2) rt) n)) IndexScan(n) SeqScan(rt) SeqScan(it2) IndexScan(mi2) IndexScan(ci) SeqScan(it1) IndexScan(mi1) SeqScan(kt) IndexScan(t) SeqScan(k) BitmapScan(mk)   */ explain (format json) SELECT COUNT(*) FROM (((((((((keyword as k CROSS JOIN movie_keyword as mk) CROSS JOIN title as t) CROSS JOIN kind_type as kt) CROSS JOIN movie_info as mi1) CROSS JOIN info_type as it1) CROSS JOIN cast_info as ci) CROSS JOIN movie_info as mi2) CROSS JOIN info_type as it2) CROSS JOIN role_type as rt) CROSS JOIN name as n WHERE
t.id = ci.movie_id
AND t.id = mi1.movie_id
AND t.id = mi2.movie_id
AND t.id = mk.movie_id
AND k.id = mk.keyword_id
AND mi1.movie_id = mi2.movie_id
AND mi1.info_type_id = it1.id
AND mi2.info_type_id = it2.id
AND (it1.id in ('18'))
AND (it2.id in ('4'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info in ('Detroit, Michigan, USA','Helsinki, Finland','Los Angeles, California, USA','Minneapolis, Minnesota, USA','Nashville, Tennessee, USA','Stage 10, 20th Century Fox Studios - 10201 Pico Blvd., Century City, Los Angeles, California, USA','Tokyo, Japan'))
AND (mi2.info in ('English','Finnish','Japanese','Spanish'))
AND (kt.kind in ('tv movie','tv series','video game'))
AND (rt.role in ('composer'))
AND (n.gender in ('f'))
AND (t.production_year <= 2015)
AND (t.production_year >= 1975)
AND (k.keyword IN ('bare-breasts','doctor','dog','friendship','homosexual','male-nudity','nudity','one-word-title','surrealism','violence'))
