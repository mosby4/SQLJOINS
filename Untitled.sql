/* joins: select all the computers from the products table:
using the products table and the categories table, return the product name and the category name */

select p.name, c.name 
from products as p
inner join category as c 
on c.categoryid = p.productsid
where c.Name ='computers';

 
/* joins: find all product names, product prices, and products ratings that have a rating of 5 */

select product.name, product.price, r.rating from products as p 
inner join review as r on r.productid = p.productid
where r.rating = 5;
 
/* joins: find the employee with the most total quantity sold.  use the sum() function and group by */

select e.FirstName, e.LastName, Sum(s.Quanity) AS 'Total'
From Sales as s
Inner Join employee as e on e.employeeID = s.EmployeeID
Group By e.EmployeeID
Order by Total
Limit 2; 


/* joins: find the name of the department, and the name of the category for Appliances and Games */
Select d.Name AS 'Department Name ', c.Name AS 'Caterfory Neame' from departments as d
Inner Join Categories as c on c.DepartmentID = d.DepartmentID
Where c.Name = ' Appliance' or c.Name = 'Games';

/* joins: find the product name, total # sold, and total price sold,
 for Eagles: Hotel California --You may need to use SUM() */
Select p.Name, Sum(s.Quanity) AS ' Total Sold', Sum(s.Quanity * s.PricePerUnit) AS 'Total Price'
Inner Join Categories AS c on c.DepartmentID = p.DepartmentID
Where p.ProductID = 97;

/* joins: find Product name, reviewer name, rating, and comment on the Visio TV. (only return for the lowest rating!) */
Select p.Name, r.Reviewer, r.Rating, r.Comment From Products AS p
Inner Join Reviews AS r on r.ProductID = p.ProductID
Where p.Product = 857 AND r.Rating = 1; 

-- ------------------------------------------ Extra - May be difficult
/* Your goal is to write a query that serves as an employee sales report.
This query should return the employeeID, the employee's first and last name, the name of each product, how many of that product they sold */
