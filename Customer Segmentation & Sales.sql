SELECT * FROM customer_segmentation

SELECT COUNT(DISTINCT CustomerID) AS Total_Emp FROM customer_segmentation

SELECT SUM(Monetary) AS Total_Monetary_Value FROM customer_segmentation

SELECT AVG(Monetary) AS Avg_Monetary_Value FROM customer_segmentation

SELECT Region,
AVG(Recency) AS Avg_Recency,
AVG(Frequency) AS Avg_Frequency,
AVG(Monetary) AS Avg_Monetary FROM customer_segmentation
GROUP BY Region

SELECT CustomerID, Monetary FROM customer_segmentation
WHERE Monetary >'10000'
ORDER BY Monetary

SELECT CustomerID,
CASE 
WHEN Frequency >= 10 AND Monetary >= 10000 THEN 'VIP'
WHEN Frequency >= 5 THEN 'Loyal'
WHEN Recency > 200 THEN 'At Risk'
ELSE 'Regular'
END AS Segment
FROM customer_segmentation
