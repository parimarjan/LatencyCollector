




-- q4 using 16921 as a seed to the RNG


select
	o_orderpriority,
	count(*) as order_count
from
	orders -- skan_memo_stash_4
where
	o_orderdate >= '1997-08-01'
	and o_orderdate < dateadd(mm, 3, '1997-08-01')
	and exists (
		select
			*
		from
			lineitem
		where
			l_orderkey = o_orderkey
			and l_commitdate < l_receiptdate
	)
group by
	o_orderpriority
order by
	o_orderpriority