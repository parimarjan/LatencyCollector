




-- q6 using 13869 as a seed to the RNG


select
	sum(l_extendedprice * l_discount) as revenue
from
	lineitem -- skan_memo_stash_6
where
	l_shipdate >= '1995-01-01'
	and l_shipdate < dateadd(yy, 1, '1995-01-01')
	and l_discount between 0.03 - 0.01 and 0.03 + 0.01
	and l_quantity < 24