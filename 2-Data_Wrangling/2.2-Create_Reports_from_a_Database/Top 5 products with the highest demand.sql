SELECT o.ProductID AS ID,
       p.ProductName AS Name,
       COUNT(o.OrderID) AS NumberOfOrders
FROM OrderDetails AS o
JOIN Products AS p ON o.ProductID = p.ProductID
GROUP BY ID
ORDER BY NumberOfOrders DESC
LIMIT 5