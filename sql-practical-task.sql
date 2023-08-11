/*task1*/
SELECT FirstName, LastName, City, State 
FROM person LEFT JOIN address 
ON person.PersonId = address.PersonId; 

/*task 2*/ 	
SELECT MAX(Salary) AS SecondHighestSalary 
FROM employee 
WHERE Salary <> (SELECT MAX(Salary) FROM employee);

/*task 3*/
SELECT E.Name AS Employee
FROM employee AS E, employee AS M
WHERE E.ManagerId = M.Id AND E.Salary > M.Salary; 

/*task 4*/
SELECT Email 
FROM person
GROUP BY Email
HAVING COUNT(Email) > 1; 

/*task 5*/
SELECT customers.Name AS Customers
FROM customers LEFT JOIN orders ON customers.Id = orders.CustomerId
WHERE orders.Id IS NULL;

/*task 6*/
SELECT class
FROM courses
GROUP BY CLASS
HAVING COUNT(student) >= 5;


 

