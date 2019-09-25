SELECT c.CategoryID,
       c.CategoryName, 
       COUNT(p.ProductID) AS NumberOfProducts
FROM Products AS p 
JOIN Categories AS c ON p.CategoryID=c.CategoryID
GROUP BY c.CategoryName
HAVING NumberOfProducts > 7
ORDER BY NumberOfProducts DESC