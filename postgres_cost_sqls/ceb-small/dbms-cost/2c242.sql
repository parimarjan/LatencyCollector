/*+ NestLoop(ci it1 it2 kt mi1 mi2 n rt t) NestLoop(ci it1 it2 kt mi1 mi2 rt t) NestLoop(ci it1 it2 kt mi1 mi2 t) NestLoop(it1 it2 kt mi1 mi2 t) NestLoop(it1 kt mi1 mi2 t) NestLoop(it1 kt mi1 t) NestLoop(kt mi1 t) NestLoop(kt t)  Leading(((((((((t kt) mi1) it1) mi2) it2) ci) rt) n)) IndexScan(n) SeqScan(rt) IndexScan(ci) SeqScan(it2) IndexScan(mi2) SeqScan(it1) IndexScan(mi1) SeqScan(t) SeqScan(kt)   */ explain (format json) SELECT COUNT(*) FROM (((((((title as t CROSS JOIN kind_type as kt) CROSS JOIN movie_info as mi1) CROSS JOIN info_type as it1) CROSS JOIN movie_info as mi2) CROSS JOIN info_type as it2) CROSS JOIN cast_info as ci) CROSS JOIN role_type as rt) CROSS JOIN name as n WHERE
t.id = ci.movie_id
AND t.id = mi1.movie_id
AND t.id = mi2.movie_id
AND mi1.movie_id = mi2.movie_id
AND mi1.info_type_id = it1.id
AND mi2.info_type_id = it2.id
AND (it1.id in ('8'))
AND (it2.id in ('7'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Albania','Czechoslovakia','Egypt','Hungary','Italy','Japan','Mexico','Philippines','Sweden','Switzerland'))
AND (mi2.info IN ('LAB:DeLuxe','MET:','OFM:35 mm','OFM:Video','RAT:1.33 : 1','RAT:2.35 : 1'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video game','video movie'))
AND (rt.role in ('composer','director','producer'))
AND (n.gender IN ('m') OR n.gender IS NULL)
AND (t.production_year <= 1975)
AND (t.production_year >= 1925)
AND (t.title in ('(#1.104)','Androcles and the Lion','Annie Get Your Gun','Chûkon giretsu - Jitsuroku Chûshingura','Devils Island','Is There Sex After Death?','Monte Carlo','Mr. District Attorney','Sea Devils','Survival','The French Line','The Wrong Man','Treasure Hunt','Winged Victory'))
