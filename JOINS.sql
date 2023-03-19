Select * from sales;

SELECT * FROM PEOPLE;

SELECT * FROM products;

SELECT * FROM geo;
SELECT s.saledate, s.amount, P.salesperson, s.SPID
FROM SALES s
JOIN People p on
p.SPID = s.SPID; 

SELECT s.saleDate,s.amount,pr.Product
FROM SALES S
LEFT JOIN PRODUCTS pr on 
pr.PID = s.PID;

SELECT s.saledate, s.amount, P.salesperson,pr.product,p.team
FROM SALES s
JOIN People p on p.SPID = s.SPID 
JOIN products pr on pr.PID = s.PID
WHERE Team = 'Jucies';


SELECT s.saledate, s.amount, P.salesperson,pr.product,p.team,g.Geo
FROM SALES s
JOIN People p on p.SPID = s.SPID 
JOIN products pr on pr.PID = s.PID
JOIN geo g on g.GeoID = s.GeoID
WHERE s.amount > 10000
and p.Team = ''
and g.Geo in ('India','Canada')
order by saledate desc;