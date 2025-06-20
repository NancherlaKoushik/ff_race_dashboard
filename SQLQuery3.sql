select * 
from FF_RACE.dbo.ff_race_50_clean

-- how many states were repersented in race

select
count(distinct state) as distinct_count
from FF_RACE.dbo.ff_race_50_clean

-- what was hte average time of men vs women

select
division,
avg(total_minutes) as avg_time
from FF_RACE.dbo.ff_race_50_clean
group by Division

-- what were the youngest and oldest ages in race
select
Division,
min(age) as youngest,
max(age) as oldest
from FF_RACE.dbo.ff_race_50_clean
group by Division


-- what are the total minutes according different age groups

with age_buckets as(
select 
	total_minutes,
	case when age < 30 then 'age 20_29'
		 when age < 40 then 'age 30_39'
		 when age < 50 then 'age 40_49'
		 when age < 60 then 'age 50_59'
	else 'age_60+' 
	end as age_group
from FF_RACE.dbo.ff_race_50_clean
)

select age_group,
avg(total_minutes) as avg_race_time
from age_buckets 
group by age_group
order by avg_race_time desc

-- top 3 males and females

with gender_ranking as(
select 
rank() over(partition by division order by total_minutes desc) as gender_rank,
fulname,
division,
total_minutes
from FF_RACE.dbo.ff_race_50_clean
)

select * 
from gender_ranking
where gender_rank < 4