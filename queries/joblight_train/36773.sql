SELECT COUNT(*) FROM title AS t,movie_companies AS mc,movie_keyword AS mk WHERE t.id=mc.movie_id AND t.id=mk.movie_id AND mk.keyword_id=64177