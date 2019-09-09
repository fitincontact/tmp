with q as(
  select  acc
         ,dt
         ,rest
         ,prc
         ,lag(rest)over(partition by acc order by dt)lag_rest
         ,lag(prc)over(partition by acc order by dt)lag_prc
         ,max(dt)over()last_dt
  from vf
)
select  acc
       ,dt
       ,nvl(lead(dt)over(partition by acc order by dt) - 1, last_dt)
       ,rest
       ,prc
       ,nvl(lead(dt)over(partition by acc order by dt) - 1, last_dt) - dt + 1 days
       ,round(rest*prc/100/365*(nvl(lead(dt)over(partition by acc order by dt) - 1, last_dt) - dt + 1), 2)prc_sum
from q
where rest != lag_rest or prc != lag_prc or lag_rest is null
