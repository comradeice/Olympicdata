-- Total number of athletes from each country
SELECT Country,COUNT(*) AS TotalAthletes FROM athletes
GROUP BY Country
ORDER BY TotalAthletes DESC


-- Top Countries with at least 10 gold medals

SELECT TeamCountry, SUM(Gold)AS Total_Gold,SUM (Silver) AS Total_Silver ,SUM(Bronze) AS Total_Bronze
FROM medals
GROUP BY TeamCountry
HAVING SUM(Gold) > = 10 
ORDER BY Total_Gold DESC


