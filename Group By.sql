SELECT geoID, sum(amount), avg(amount),sum(boxes)
from sales
group by geoID;

SELECT g.geo,sum(amount),avg(amount),sum(boxes)
from sales s
join geo g on
s.geoID = g.geoID
GROUP BY g.geo;

select pr.category,p.team,sum(amount),avg(amount),sum(boxes)
from sales s
join people p on p.SPID = s.SPID
join products pr on pr.pid = s.pid
where p.team <>''
group by pr.category,p.team
order by pr.category, p.team;
