SELECT COUNT(*) FROM title AS t,movie_companies AS mc,movie_keyword AS mk WHERE t.id=mc.movie_id AND t.id=mk.movie_id AND mc.company_id=11374 AND mc.company_type_id>1 AND mk.keyword_id<19932