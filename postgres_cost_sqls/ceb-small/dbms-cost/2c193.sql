/*+ NestLoop(ci it1 it2 kt mi1 mi2 n rt t) NestLoop(ci it1 it2 kt mi1 mi2 rt t) NestLoop(ci it1 it2 kt mi1 mi2 t) NestLoop(it1 it2 kt mi1 mi2 t) NestLoop(it1 kt mi1 mi2 t) NestLoop(kt mi1 mi2 t) NestLoop(kt mi2 t) NestLoop(kt t)  Leading(((((((((t kt) mi2) mi1) it1) it2) ci) rt) n)) IndexScan(n) SeqScan(rt) IndexScan(ci) SeqScan(it2) SeqScan(it1) IndexScan(mi1) IndexScan(mi2) SeqScan(t) SeqScan(kt)   */ explain (format json) SELECT COUNT(*) FROM (((((((title as t CROSS JOIN kind_type as kt) CROSS JOIN movie_info as mi2) CROSS JOIN movie_info as mi1) CROSS JOIN info_type as it1) CROSS JOIN info_type as it2) CROSS JOIN cast_info as ci) CROSS JOIN role_type as rt) CROSS JOIN name as n WHERE
t.id = ci.movie_id
AND t.id = mi1.movie_id
AND t.id = mi2.movie_id
AND mi1.movie_id = mi2.movie_id
AND mi1.info_type_id = it1.id
AND mi2.info_type_id = it2.id
AND (it1.id in ('2'))
AND (it2.id in ('4'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Black and White','Color'))
AND (mi2.info IN ('Dutch','English','Malayalam','Norwegian','Serbo-Croatian'))
AND (kt.kind in ('episode','movie','tv movie'))
AND (rt.role in ('actor','composer','costume designer','editor'))
AND (n.gender IN ('f'))
AND (t.production_year <= 1990)
AND (t.production_year >= 1950)
AND (t.title in ('(#1.36)','(#1.391)','(#1.399)','(#1.436)','(#5.12)','(#8.8)','A Star Is Born','Airplane!','Blood','Cannonball Run II','Crossed Swords','Diplomatic Immunity','Family Affair','Mans Best Friend','Pillow Talk','Silent Night, Deadly Night','The Deputy','The Great Impostor','The Human Factor'))
