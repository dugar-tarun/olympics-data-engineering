-- Queries to be run on processed data to generate data for clean layer

-- Athletes per country
SELECT country, COUNT(*) as TotalAthletes
FROM athletes
GROUP BY country
ORDER BY TotalAthletes DESC;

-- Total gold, silver and bronze medals per country
SELECT Team_Country,
SUM(GOLD) AS TotalGold,
SUM(SILVER) AS TotalSilver,
SUM(BRONZE) AS TotalBronze
FROM Medals
GROUP BY Team_Country;

