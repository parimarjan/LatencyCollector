/*+ NestLoop(ci it1 kt mi1 n rt t) NestLoop(ci kt mi1 n rt t) HashJoin(ci kt mi1 rt t) NestLoop(ci kt mi1 t) HashJoin(kt mi1 t) NestLoop(mi1 t)  Leading((it1 (((((mi1 t) kt) ci) rt) n))) SeqScan(it1) IndexScan(n) SeqScan(rt) IndexScan(ci) SeqScan(kt) BitmapScan(mi1) IndexScan(t)   */ explain (format json) SELECT n.name, mi1.info, MIN(t.production_year), MAX(t.production_year)
FROM info_type as it1 CROSS JOIN (((((movie_info as mi1 CROSS JOIN title as t) CROSS JOIN kind_type as kt) CROSS JOIN cast_info as ci) CROSS JOIN role_type as rt) CROSS JOIN name as n) WHERE
t.id = ci.movie_id
AND t.id = mi1.movie_id
AND mi1.info_type_id = it1.id
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.movie_id = mi1.movie_id
AND ci.role_id = rt.id
AND (it1.id IN ('5'))
AND (mi1.info IN ('Argentina:13','Argentina:Atp','Australia:G','Canada:13+','Finland:K-11','Mexico:B','Netherlands:12','Netherlands:AL','Philippines:R-18','Sweden:7','Switzerland:16','Switzerland:7','UK:18','USA:PG'))
AND (n.name ILIKE '%bra%')
AND (kt.kind IN ('episode','movie','tv movie'))
AND (rt.role IN ('actor','actress','cinematographer','composer','costume designer'))
GROUP BY mi1.info, n.name
