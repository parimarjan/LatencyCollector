/*+ NestLoop(it1 it3 it4 k kt mi1 mii1 mii2 mk t) NestLoop(it1 it3 it4 kt mi1 mii1 mii2 mk t) NestLoop(it3 it4 kt mi1 mii1 mii2 mk t) NestLoop(it3 it4 kt mii1 mii2 mk t) NestLoop(it3 it4 kt mii1 mii2 t) NestLoop(it3 kt mii1 mii2 t) NestLoop(kt mii1 mii2 t) NestLoop(mii1 mii2 t) NestLoop(mii1 mii2)  Leading(((it1 (((((((mii1 mii2) t) kt) it3) it4) mk) mi1)) k)) IndexOnlyScan(k) SeqScan(it1) IndexScan(mi1) IndexScan(mk) SeqScan(it4) SeqScan(it3) IndexScan(kt) IndexScan(t) BitmapScan(mii1) IndexScan(mii2)   */ explain (format json) SELECT COUNT(*)
FROM (info_type as it1 CROSS JOIN (((((((movie_info_idx as mii1 CROSS JOIN movie_info_idx as mii2) CROSS JOIN title as t) CROSS JOIN kind_type as kt) CROSS JOIN info_type as it3) CROSS JOIN info_type as it4) CROSS JOIN movie_keyword as mk) CROSS JOIN movie_info as mi1)) CROSS JOIN keyword as k WHERE
t.id = mi1.movie_id
AND t.id = mii1.movie_id
AND t.id = mii2.movie_id
AND t.id = mk.movie_id
AND mii2.movie_id = mii1.movie_id
AND mi1.movie_id = mii1.movie_id
AND mk.movie_id = mi1.movie_id
AND mk.keyword_id = k.id
AND mi1.info_type_id = it1.id
AND mii1.info_type_id = it3.id
AND mii2.info_type_id = it4.id
AND t.kind_id = kt.id
AND (kt.kind IN ('tv movie','tv series'))
AND (t.production_year <= 1975)
AND (t.production_year >= 1875)
AND (mi1.info IN ('English'))
AND (it1.id IN ('4'))
AND it3.id = '100'
AND it4.id = '101'
AND (mii2.info ~ '^(?:[1-9]\d*|0)?(?:\.\d+)?$' AND mii2.info::float <= 5.0)
AND (mii2.info ~ '^(?:[1-9]\d*|0)?(?:\.\d+)?$' AND 2.0 <= mii2.info::float)
AND (mii1.info ~ '^(?:[1-9]\d*|0)?(?:\.\d+)?$' AND 0.0 <= mii1.info::float)
AND (mii1.info ~ '^(?:[1-9]\d*|0)?(?:\.\d+)?$' AND mii1.info::float <= 1000.0)
