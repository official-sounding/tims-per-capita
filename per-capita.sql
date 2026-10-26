with by_city as (
	select 
		p.City, 
		count(*) as loc, 
		max("population") as pop 
	from location l
	join population p on l.population_id = p.id
	group by p.City
)
select city, loc, pop, loc/cast(pop as float) as percap from by_city
order by percap desc