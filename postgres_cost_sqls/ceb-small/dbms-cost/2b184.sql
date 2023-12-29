/*+ NestLoop(ci it1 it2 k kt mi1 mi2 mk n rt t) NestLoop(ci it1 it2 k kt mi1 mi2 mk rt t) NestLoop(ci it1 k kt mi1 mi2 mk rt t) NestLoop(ci it1 k kt mi1 mk rt t) NestLoop(ci it1 k kt mi1 mk t) NestLoop(it1 k kt mi1 mk t) NestLoop(k kt mi1 mk t) NestLoop(k kt mk t) NestLoop(k mk t) NestLoop(k mk)  Leading(((((((((((k mk) t) kt) mi1) it1) ci) rt) mi2) it2) n)) IndexScan(n) SeqScan(it2) IndexScan(mi2) SeqScan(rt) IndexScan(ci) SeqScan(it1) IndexScan(mi1) SeqScan(kt) IndexScan(t) SeqScan(k) BitmapScan(mk)   */ explain (format json) SELECT COUNT(*) FROM (((((((((keyword as k CROSS JOIN movie_keyword as mk) CROSS JOIN title as t) CROSS JOIN kind_type as kt) CROSS JOIN movie_info as mi1) CROSS JOIN info_type as it1) CROSS JOIN cast_info as ci) CROSS JOIN role_type as rt) CROSS JOIN movie_info as mi2) CROSS JOIN info_type as it2) CROSS JOIN name as n WHERE
t.id = ci.movie_id
AND t.id = mi1.movie_id
AND t.id = mi2.movie_id
AND t.id = mk.movie_id
AND k.id = mk.keyword_id
AND mi1.movie_id = mi2.movie_id
AND mi1.info_type_id = it1.id
AND mi2.info_type_id = it2.id
AND (it1.id in ('6'))
AND (it2.id in ('7'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info in ('Mono','Silent'))
AND (mi2.info in ('MET:300 m','OFM:16 mm','PCS:Techniscope','PFM:68 mm'))
AND (kt.kind in ('tv series','video game','video movie'))
AND (rt.role in ('actress','editor'))
AND (n.gender in ('f') OR n.gender IS NULL)
AND (t.production_year <= 1975)
AND (t.production_year >= 1875)
AND (k.keyword IN ('bare-breasts','bare-chested-male','cigarette-smoking','death','family-relationships','father-daughter-relationship','kidnapping','lesbian','lesbian-sex','male-frontal-nudity','marriage','mother-daughter-relationship','singing','suicide','tv-mini-series'))
