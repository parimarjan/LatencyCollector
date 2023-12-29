/*+ NestLoop(ci it1 it2 k kt mi1 mi2 mk n rt t) NestLoop(ci it1 it2 k kt mi1 mi2 mk rt t) NestLoop(ci it1 k kt mi1 mi2 mk rt t) NestLoop(ci k kt mi1 mi2 mk rt t) NestLoop(ci k kt mi2 mk rt t) NestLoop(ci k kt mi2 mk t) NestLoop(k kt mi2 mk t) NestLoop(k kt mk t) NestLoop(k mk t) NestLoop(k mk)  Leading((((((rt (((((k mk) t) kt) mi2) ci)) mi1) it1) it2) n)) IndexScan(n) SeqScan(it2) SeqScan(it1) IndexScan(mi1) SeqScan(rt) IndexScan(ci) IndexScan(mi2) SeqScan(kt) IndexScan(t) SeqScan(k) BitmapScan(mk)   */ explain (format json) SELECT COUNT(*) FROM ((((role_type as rt CROSS JOIN (((((keyword as k CROSS JOIN movie_keyword as mk) CROSS JOIN title as t) CROSS JOIN kind_type as kt) CROSS JOIN movie_info as mi2) CROSS JOIN cast_info as ci)) CROSS JOIN movie_info as mi1) CROSS JOIN info_type as it1) CROSS JOIN info_type as it2) CROSS JOIN name as n WHERE
t.id = ci.movie_id
AND t.id = mi1.movie_id
AND t.id = mi2.movie_id
AND t.id = mk.movie_id
AND k.id = mk.keyword_id
AND mi1.movie_id = mi2.movie_id
AND mi1.info_type_id = it1.id
AND mi2.info_type_id = it2.id
AND (it1.id in ('2'))
AND (it2.id in ('6'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info in ('Black and White','Color'))
AND (mi2.info in ('4-Track Stereo','DTS','Dolby Digital','Stereo'))
AND (kt.kind in ('episode','video movie'))
AND (rt.role in ('director'))
AND (n.gender in ('m'))
AND (t.production_year <= 2015)
AND (t.production_year >= 1925)
AND (k.keyword IN ('blue-grotto-capri','blue-socks','breakup','childrens-museum','clambake','firing-agent','knife-stick-gun-defense','krazy-kat','limbo-the-dance','moscow-international-film-festival','organic-gardening','saudi-youth','stingy-boss'))
