SELECT COUNT(*) FROM title AS t,movie_info AS mi,movie_keyword AS mk WHERE t.id=mi.movie_id AND t.id=mk.movie_id AND t.kind_id<3 AND t.production_year<2009 AND mk.keyword_id=6224