SELECT COUNT(*) FROM title AS t,cast_info AS ci,movie_keyword AS mk WHERE t.id=ci.movie_id AND t.id=mk.movie_id AND t.kind_id<2 AND ci.role_id>1 AND mk.keyword_id>9369