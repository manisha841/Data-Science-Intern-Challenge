1.How many orders were shipped by Speedy Express in total?

SELECT OrderID, COUNT(OrderID) FROM Orders WHERE ShipperID IN(
SELECT ShipperID FROM Shippers WHERE ShipperName="Speedy Express");

Output: 54

2.What is the last name of the employee with the most orders?

SELECT emp.LastName
FROM Employees emp
INNER JOIN Orders ord
    ON emp.EmployeeID = ord.EmployeeID
GROUP BY emp.EmployeeID, emp.LastName
HAVING COUNT(*) = (    SELECT MAX(numberOrders)
   				 FROM (    SELECT EmployeeID, COUNT(OrderID) AS numberOrders
   						 FROM Orders  GROUP BY EmployeeID) maxOrders)

Output: Peacock

3.What product was ordered the most by customers in Germany?

SELECT ProductName FROM Products WHERE ProductID IN(
SELECT MAX(Quantity) FROM OrderDetails WHERE OrderID IN(
(SELECT OrderID FROM Orders WHERE CustomerID IN
(SELECT CustomerID FROM Customers WHERE Country="Germany"))));

Output: Outback Lager


