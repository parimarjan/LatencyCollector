/*+ NestLoop(it1 it3 it4 k kt mi1 mii1 mii2 mk t) NestLoop(it1 it3 it4 kt mi1 mii1 mii2 mk t) NestLoop(it1 it3 it4 kt mi1 mii1 mii2 t) NestLoop(it1 it3 kt mi1 mii1 mii2 t) NestLoop(it1 kt mi1 mii1 mii2 t) NestLoop(kt mi1 mii1 mii2 t) NestLoop(mi1 mii1 mii2 t) NestLoop(mii1 mii2 t) NestLoop(mii1 mii2)  Leading((((((((((mii1 mii2) t) mi1) kt) it1) it3) it4) mk) k)) IndexOnlyScan(k) IndexScan(mk) SeqScan(it4) SeqScan(it3) IndexOnlyScan(it1) IndexScan(kt) IndexScan(mi1) IndexScan(t) BitmapScan(mii1) IndexScan(mii2)   */ explain (format json) SELECT COUNT(*)
FROM ((((((((movie_info_idx as mii1 CROSS JOIN movie_info_idx as mii2) CROSS JOIN title as t) CROSS JOIN movie_info as mi1) CROSS JOIN kind_type as kt) CROSS JOIN info_type as it1) CROSS JOIN info_type as it3) CROSS JOIN info_type as it4) CROSS JOIN movie_keyword as mk) CROSS JOIN keyword as k WHERE
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
AND (kt.kind IN ('tv series','video movie'))
AND (t.production_year <= 2015)
AND (t.production_year >= 1990)
AND (mi1.info IN ('English','RAT:1.33 : 1','Spanish'))
AND (it1.id IN ('16','4','7'))
AND it3.id = '100'
AND it4.id = '101'
AND (mii2.info ~ '^(?:[1-9]\d*|0)?(?:\.\d+)?$' AND mii2.info::float <= 7.0)
AND (mii2.info ~ '^(?:[1-9]\d*|0)?(?:\.\d+)?$' AND 3.0 <= mii2.info::float)
AND (mii1.info ~ '^(?:[1-9]\d*|0)?(?:\.\d+)?$' AND 800.0 <= mii1.info::float)
AND (mii1.info ~ '^(?:[1-9]\d*|0)?(?:\.\d+)?$' AND mii1.info::float <= 31000.0)
