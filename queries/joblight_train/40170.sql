SELECT COUNT(*) FROM title AS t,movie_companies AS mc,movie_info AS mi WHERE t.id=mc.movie_id AND t.id=mi.movie_id AND t.kind_id>2 AND t.production_year=2011 AND mc.company_id>639 AND mc.company_type_id<2 AND mi.info_type_id>3