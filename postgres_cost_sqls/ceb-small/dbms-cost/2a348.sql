/*+ NestLoop(ci it1 it2 k kt mi1 mi2 mk n rt t) NestLoop(ci it1 it2 kt mi1 mi2 mk n rt t) NestLoop(ci it1 it2 kt mi1 mi2 n rt t) HashJoin(ci it1 it2 kt mi1 mi2 rt t) NestLoop(ci it1 it2 kt mi1 mi2 t) NestLoop(it1 it2 kt mi1 mi2 t) NestLoop(it1 kt mi1 mi2 t) NestLoop(kt mi1 mi2 t) HashJoin(kt mi1 t) NestLoop(mi1 t)  Leading(((((((it2 (it1 (((mi1 t) kt) mi2))) ci) rt) n) mk) k)) IndexOnlyScan(k) IndexScan(mk) IndexScan(n) SeqScan(rt) IndexScan(ci) SeqScan(it2) SeqScan(it1) IndexScan(mi2) SeqScan(kt) BitmapScan(mi1) IndexScan(t)   */ explain (format json) SELECT COUNT(*) FROM (((((info_type as it2 CROSS JOIN (info_type as it1 CROSS JOIN (((movie_info as mi1 CROSS JOIN title as t) CROSS JOIN kind_type as kt) CROSS JOIN movie_info as mi2))) CROSS JOIN cast_info as ci) CROSS JOIN role_type as rt) CROSS JOIN name as n) CROSS JOIN movie_keyword as mk) CROSS JOIN keyword as k WHERE
t.id = ci.movie_id
AND t.id = mi1.movie_id
AND t.id = mi2.movie_id
AND t.id = mk.movie_id
AND k.id = mk.keyword_id
AND mi1.movie_id = mi2.movie_id
AND mi1.info_type_id = it1.id
AND mi2.info_type_id = it2.id
AND (it1.id in ('18'))
AND (it2.id in ('7'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info in ('20th Century Fox Studios - 10201 Pico Blvd., Century City, Los Angeles, California, USA','CBS Studio Center - 4024 Radford Avenue, Studio City, Los Angeles, California, USA','London, England, UK','Los Angeles, California, USA','Metro-Goldwyn-Mayer Studios - 10202 W. Washington Blvd., Culver City, California, USA','Metromedia Square - 5746 W. Sunset Blvd., Hollywood, Los Angeles, California, USA','New York City, New York, USA'))
AND (mi2.info in ('OFM:35 mm','PFM:35 mm','PFM:Video','RAT:1.33 : 1','RAT:1.85 : 1'))
AND (kt.kind in ('tv movie','tv series','video game'))
AND (rt.role in ('director','production designer'))
AND (n.gender in ('f') OR n.gender IS NULL)
AND (t.production_year <= 2015)
AND (t.production_year >= 1975)
