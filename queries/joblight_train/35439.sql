SELECT COUNT(*) FROM title AS t,movie_companies AS mc,movie_info AS mi WHERE t.id=mc.movie_id AND t.id=mi.movie_id AND t.kind_id>4 AND mc.company_id<2805 AND mc.company_type_id=2