WITH ProductsShipped AS (
          SELECT od.OrderID AS OrderID, 
			 od.ProductID  AS ProductID, 
			 strftime('%Y',ShippedDate) AS ShippedYear
          FROM OrderDetails AS od 
		  JOIN Orders AS o ON od.OrderID=o.OrderId
          WHERE ShippedYear NOTNULL )

SELECT psh.ShippedYear AS YearOfShipping, 
       count(psh.ProductID) AS NoOfProducts
FROM ProductsShipped AS psh
GROUP BY YearOfShipping
ORDER BY YearOfShipping