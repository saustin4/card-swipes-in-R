select f.id, fac_id, time, retain_term
from fitness_swipe f
left outer join census2 c on f.id = c.id
where f.id = c.id;



create table final as (select f.id, fac_id, time, retain_term
from fitness_swipe f
left outer join census2 c on f.id = c.id
where f.id = c.id)
;

--32458 swipes
select count(id) from final;

select * from final;




select to_char(to_number(id)), retain_term from census;

CREATE TABLE census2
  AS (select to_char(to_number(id)) as id, retain_term from census);
  
select * from census2;

select count(distinct id) from census;

select count( id) from final;

select * from final;


-- count number of swipes
create table f2 as (SELECT id, count(id) AS count 
FROM final 
GROUP BY id
)
;
select * from f2;

select id,fac_id,time, retain, (SELECT  count(*)
FROM final ) as swipes
FROM final
group by id, fac_id, time, retain
order by id;


create table r_data as (select * from f2 inner join final using (id) );

select * from f2 inner join final using (id) ;
--weekly
select id, retain, count
,sum(case when time between '25-AUG-17' and '31-AUG-17' then 1 else 0 end) as week1
,sum(case when time between '01-SEP-17' and '07-SEP-17' then 1 else 0 end) as week2
,sum(case when time between '08-SEP-17' and '14-SEP-17' then 1 else 0 end) as week3
,sum(case when time between '15-SEP-17' and '21-SEP-17' then 1 else 0 end) as week4
,sum(case when time between '22-SEP-17' and '28-SEP-17' then 1 else 0 end) as week5
,sum(case when time between '29-SEP-17' and '05-OCT-17' then 1 else 0 end) as week6
,sum(case when time between '06-OCT-17' and '12-OCT-17' then 1 else 0 end) as week7
,sum(case when time between '13-OCT-17' and '19-OCT-17' then 1 else 0 end) as week8
,sum(case when time between '20-OCT-17' and '26-OCT-17' then 1 else 0 end) as week9
,sum(case when time between '27-OCT-17' and '04-NOV-17' then 1 else 0 end) as week10
,sum(case when time between '05-NOV-17' and '09-NOV-17' then 1 else 0 end) as week11
,sum(case when time between '10-NOV-17' and '16-NOV-17' then 1 else 0 end) as week12
,sum(case when time between '17-NOV-17' and '23-NOV-17' then 1 else 0 end) as week13
,sum(case when time between '24-NOV-17' and '02-DEC-17' then 1 else 0 end) as week14

from xx 
group by id, retain, count
;



-- monthly

select id, retain, count
,sum(case when time between '25-AUG-17' and '25-SEP-17' then 1 else 0 end) as month1
,sum(case when time between '26-SEP-17' and '26-OCT-17' then 1 else 0 end) as month2
,sum(case when time between '27-OCT-17' and '27-NOV-17' then 1 else 0 end) as month3
,sum(case when time between '28-NOV-17' and '28-DEC-17' then 1 else 0 end) as month4




from xx 
group by id, retain, count;

select * from xx;



select * from r_data;