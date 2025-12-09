SELECT * FROM `city`;

-- Q1. Your first step is to determine the total number of cities within the country
SELECT COUNT(*) AS TotalCitiesInUSA
From `City`
WHERE `Countrycode` = "USA";

-- Q2.Identify the country with the highest life expectancy.
SELECT `Name`, `LifeExpectancy`
FROM `country`
ORDER BY `LifeExpectancy` DESC
LIMIT 1;

-- Q3.Find all cities around the world whose name contains the word “New”
SELECT *
FROM `city`
WHERE `Name` LIKE '%New%';

-- Q4.The most populous cities in the world, limited to 10 first rows
SELECT *
FROM `city`
ORDER BY `population` DESC
LIMIT 10;

-- Q5. Identifying cities from the database with population exceeding 2 million.
SELECT *
FROM `City`
WHERE `Population` > 2000000;

--  Q6.A list of cities from the database that start with the prefix 'Be' 
SELECT *
FROM `city`
WHERE `Name` LIKE 'Be%';

-- Q7.Cities with populations ranging between 500,000 and 1 million 
SELECT *
FROM `city`
WHERE `Population` BETWEEN 500000 AND 1000000
ORDER BY `Population` DESC;

-- Q8.Providing a sorted list of cities from the database in ascending order by name
SELECT *
FROM `city`
ORDER BY `Name` ASC;

-- Q9. Identifying the most populated city from the database
SELECT *
FROM `city`
WHERE `Population` = (SELECT MAX(`Population`) FROM `city`);

-- Q10.  List of unique city names sorted alphabetically
SELECT `Name` AS CityName,
	 COUNT(*) AS Frequency
From `city`
GROUP BY `Name`
ORDER BY CityName ASC;

-- Q11. Identifying the city with the lowest population from the database.alter
SELECT * 
FROM `City`
ORDER BY `Population`
LIMIT 1;
-- or
SELECT *
FROM `City`
WHERE `Population` = (SELECT MIN(`Population`) From `City`);

-- Q12. Identifying the country with the highest population from the database.
SELECT `Name` AS Country,
	`Population`
FROM `country`
ORDER BY `Population` DESC
LIMIT 1;
-- or
SELECT *
FROM `Country`
WHERE `Population` = (SELECT MAX(`Population`) From `Country`);

-- Q13. Identifying the capital of Spain from the database.
SELECT `Country`.`Name` AS Country,
		`City`.`Name` AS Capital
FROM `Country`
JOIN `City` ON `Country`.`Capital` = `City`.`ID`
WHERE `Country`.`Name` = 'Spain';

-- Q14. A list of cities located in Europe from the database.
SELECT `City`.`Name` AS City,
		`Country`.`Name` AS Country,
        `Country`.`Continent`,
        `City`.`District`
From `City`
JOIN `Country` ON `City`.`CountryCode` = `Country`.`Code`
WHERE `Country`.`Continent` = 'Europe';

-- Q15. Calculating the average population for each country from the database to provide valuable insights into global population trends. 
SELECT `Country`.`Name` AS Country,
		AVG(`City`.`Population`) AS AverageCityPopulation
FROM `City`
JOIN `Country` ON `City`.`CountryCode` = `Country`.`Code`
GROUP BY `Country`.`Name`
ORDER BY AverageCityPopulation DESC;

-- Q16. Comparing the populations of capital cities from different countries.
SELECT `Country`.`Name` AS Country,
	   `City`.`Name` AS Capital,
	   `City`.`Population` AS CapitalPopulation
FROM `Country`
JOIN `City` ON `Country`.`Capital` = `City`.`ID`
ORDER BY `City`.`Population` DESC;

-- Q17. Identifying countries with sparse population from the database.
-- Population density = total population / total land area.
SELECT `Name` AS Country, 
	`Population`, 
    `SurfaceArea`, 
    (`Population` / `SurfaceArea`) AS PopulationDensity
From `Country` 
WHERE `Population` > 0 
ORDER BY PopulationDensity ASC;

-- Q18. Identifying cities with above-average GDP per capita from the database.
-- GDP per capita = Total GDP / Total Population
SELECT `City`.`Name` AS City,
	   `Country`.`Name` AS Country, 
	 ( `Country`.`GNP` / `Country`.`Population`) AS GDP_Per_Captia
From `City`
JOIN `Country` on `City`.`CountryCode` = `Country`.`Code`
WHERE `Country`.`GNP` IS NOT NULL
	AND `Country`.`Population` > 0 
	AND ( `Country`.`GNP` / `Country`.`Population` ) > ( SELECT AVG( `GNP` / `Population` ) 
			From `country` 
			WHERE `GNP` IS NOT NULL 
			AND `Population` > 0)
ORDER BY GDP_Per_Captia DESC;

-- Q19. providing data on cities ranked between 31st and 40th by population.
SELECT *
FROM `City`
ORDER BY `Population` DESC
LIMIT 10 OFFSET 30;
