WITH Sales AS (SELECT o.ProductID,
            CASE WHEN o.Discount = 0.0 THEN o.Quantity*o.UnitPrice 
			ELSE o.Quantity*o.UnitPrice*o.Discount 
			END AS P_Sales
			FROM OrderDetails AS o),

TotalSales AS (
               SELECT s.ProductID AS ID, 
			          p.ProductName AS Name, 
					  SUM(s.P_Sales) AS Total_Sales
               FROM Sales AS s JOIN Products AS p ON ID=p.ProductID
               GROUP BY ID
               ORDER BY Total_Sales DESC)
			   
SELECT * 
FROM TotalSales 
LIMIT 5			   