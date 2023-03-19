/**displays all the tables from the database**/
show tables;

/**Check Sales Data**/
desc sales;

/**Select Various Columns from sales**/
Select * from sales;
Select SaleDate,Amount,Customers from Sales;
Select Amount,Customers,GeoID from Sales;

Select Saledate,Amount,Boxes,Amount/boxes FROM Sales;

Select Saledate,Amount,Boxes, Amount/Boxes as 'Amount Per Box' from Sales;

Select * FRom sales 
WHERE amount> 10000
Order By amount desc;

SELECT * FROM SALES
WHERE GeoID = 'G1'
ORDER BY PID, Amount desc;

SELECT * FROM SALES
WHERE amount > 10000 and saledate >= '2022-01-01';

SELECT saledate, amount from sales
where amount> 10000 and year(SaleDate) = '2022'
ORDER BY Amount desc;

SELECT * from sales 
where boxes between 0 and 50;

SELECT saledate,amount,boxes, weekday(SaleDate) as 'DayOfWeek'
from sales
where weekday(SaleDate) = 4;

/**Check various columns from people table**/
SELECT * FROM people
where Team = 'Jucies' or Team = 'Delish';

SELECT * FROM people 
WHERE Team in ('Delish','Jucies');

SELECT * FROM people
WHERE salesperson like '%B%';

SELECT SaleDate, Amount,
		case 	when amount < 1000 then 'Under 1K'
				when amount< 50000 then 'Under 5k'
                when amount < 10000 then 'Under 10k'
			else '10k or more'
		end as 'Amount Category'
FROM sales;
        

