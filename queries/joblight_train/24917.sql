SELECT COUNT(*) FROM title AS t,movie_companies AS mc,movie_info AS mi WHERE t.id=mc.movie_id AND t.id=mi.movie_id AND t.production_year=1996 AND mc.company_id<19 AND mi.info_type_id=1