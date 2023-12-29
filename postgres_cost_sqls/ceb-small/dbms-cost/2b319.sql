/*+ NestLoop(ci it1 it2 k kt mi1 mi2 mk n rt t) NestLoop(ci it1 it2 k kt mi1 mi2 mk rt t) NestLoop(ci it1 it2 k kt mi1 mi2 mk t) NestLoop(it1 it2 k kt mi1 mi2 mk t) NestLoop(it1 k kt mi1 mi2 mk t) NestLoop(k kt mi1 mi2 mk t) NestLoop(k kt mi2 mk t) NestLoop(k kt mk t) NestLoop(k mk t) NestLoop(k mk)  Leading(((((((((((k mk) t) kt) mi2) mi1) it1) it2) ci) rt) n)) IndexScan(n) SeqScan(rt) IndexScan(ci) SeqScan(it2) SeqScan(it1) IndexScan(mi1) IndexScan(mi2) SeqScan(kt) IndexScan(t) SeqScan(k) BitmapScan(mk)   */ explain (format json) SELECT COUNT(*) FROM (((((((((keyword as k CROSS JOIN movie_keyword as mk) CROSS JOIN title as t) CROSS JOIN kind_type as kt) CROSS JOIN movie_info as mi2) CROSS JOIN movie_info as mi1) CROSS JOIN info_type as it1) CROSS JOIN info_type as it2) CROSS JOIN cast_info as ci) CROSS JOIN role_type as rt) CROSS JOIN name as n WHERE
t.id = ci.movie_id
AND t.id = mi1.movie_id
AND t.id = mi2.movie_id
AND t.id = mk.movie_id
AND k.id = mk.keyword_id
AND mi1.movie_id = mi2.movie_id
AND mi1.info_type_id = it1.id
AND mi2.info_type_id = it2.id
AND (it1.id in ('7'))
AND (it2.id in ('1'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info in ('OFM:Live','OFM:Video','PCS:Spherical','PFM:35 mm','RAT:1.33 : 1'))
AND (mi2.info in ('25','30','60','87','90','91','94','98'))
AND (kt.kind in ('tv movie','tv series','video game'))
AND (rt.role in ('actor','miscellaneous crew'))
AND (n.gender in ('m'))
AND (t.production_year <= 2010)
AND (t.production_year >= 1950)
AND (k.keyword IN ('cigarette-smoking','death','doctor','gay','gun','hardcore','hospital','lesbian-sex','mother-son-relationship','police','suicide'))
