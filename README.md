# World-db-SQL-Project
This project showcases 19 SQL queries using the **world_db** database in MySQL.  

---

This repository demonstrates structured SQL problem-solving, data analysis, and database querying.

## Project Contents
- **SQL Script contains all the syntax of the 19 questions**  
- **19+ screenshots of query results**  
- **Imported world db SQL database**  
- **README documentation**
  
---

## **SQL Questions & Output Screenshots**

Below are all questions with their related scenarios, SQL syntax, and output screenshots.

### **1. Count Cities in USA**

**Scenario:**  
Determine how many cities exist in the USA for a demographic baseline.

**SQL Syntax:** 
```SQL
SELECT COUNT(*) AS TotalCitiesInUSA
From `City`
WHERE `Countrycode` = "USA";
```

**Output:**  
![Q1](screenshots/Q1.ipg)



### **2. Country with Highest Life Expectancy**

**Scenario:**  
Identify the country with the highest life expectancy for global health analysis.

**SQL Syntax:** 
```SQL
SELECT `Name`, `LifeExpectancy`
FROM `country`
ORDER BY `LifeExpectancy` DESC
LIMIT 1;
```

**Output:**  
![Q2](screenshots/Q2.png)



### **3. Cities Containing the Word “New”**

**Scenario:**  
Travel agency wants to promote cities with “New” in their names.

**SQL Syntax:** 
```SQL
SELECT *
FROM `city`
WHERE `Name` LIKE '%New%';
```

**Screenshot:**  
![Q3](screenshots/Q3.png)

---

## 🔹 **4. Display First 10 Cities by Population**

**Scenario:**  
Provide a brief overview of the world’s top 10 most populous cities.

**SQL File:** `04_first_10_cities.sql`

**Screenshot:**  
![Screenshot](screenshots/Q4.png)

---

## 🔹 **5. Cities with Population > 2,000,000**

**Scenario:**  
Developer wants to focus on large-population cities for investment.

**SQL File:** `05_population_over_2m.sql`

**Screenshot:**  
![Screenshot](screenshots/Q5.png)

---

## 🔹 **6. Cities Beginning with "Be"**

**Scenario:**  
A travel blogger needs cities starting with the prefix "Be".

**SQL File:** `06_cities_start_be.sql`

**Screenshot:**  
![Screenshot](screenshots/Q6.png)

---

## 🔹 **7. Cities with Population Between 500,000 and 1,000,000**

**Scenario:**  
Urban planning committee researching mid-sized cities.

**SQL File:** `07_population_500k_1m.sql`

**Screenshot:**  
![Screenshot](screenshots/Q7.png)

---

## 🔹 **8. Cities Sorted Alphabetically (A–Z)**

**Scenario:**  
Geography teacher wants cities listed alphabetically.

**SQL File:** `08_sort_cities_asc.sql`

**Screenshot:**  
![Screenshot](screenshots/Q8.png)

---

## 🔹 **9. Most Populated City in the World**

**Scenario:**  
Investment firm researching the most populated global city.

**SQL File:** `09_most_populated_city.sql`

**Screenshot:**  
![Screenshot](screenshots/Q9.png)

---

## 🔹 **10. City Name Frequency Analysis**

**Scenario:**  
Teacher wants unique city names with their occurrence counts.

**SQL File:** `10_city_name_frequency.sql`

**Screenshot:**  
![Screenshot](screenshots/Q10.png)

---

## 🔹 **11. City with the Lowest Population**

**Scenario:**  
Census bureau analyzing cities with smallest populations.

**SQL File:** `11_lowest_population_city.sql`

**Screenshot:**  
![Screenshot](screenshots/Q11.png)

---

## 🔹 **12. Country with Largest Population**

**Scenario:**  
Research institute analyzing the world's highest population country.

**SQL File:**  
- `12_1_country_largest_population.sql`  
- `12_2_country_population_alternative.sql`

**Screenshots:**  
![Screenshot](screenshots/Q12_1.png)  
![Screenshot](screenshots/Q12_2.png)

---

## 🔹 **13. Capital of Spain**

**Scenario:**  
Travel agency needs accurate capital city for Spain.

**SQL File:** `13_capital_of_spain.sql`

**Screenshot:**  
![Screenshot](screenshots/Q13.png)

---

## 🔹 **14. Cities in Europe**

**Scenario:**  
Cultural exchange program needs a list of European cities.

**SQL File:** `14_cities_in_europe.sql`

**Screenshot:**  
![Screenshot](screenshots/Q14.png)

---

## 🔹 **15. Average Population by Country**

**Scenario:**  
Research team analyzing population averages globally.

**SQL File:** `15_avg_population_by_country.sql`

**Screenshot:**  
![Screenshot](screenshots/Q15.png)

---

## 🔹 **16. Capital Cities Population Comparison**

**Scenario:**  
Statistical firm comparing populations of worldwide capitals.

**SQL File:** `16_capital_population_comparison.sql`

**Screenshot:**  
![Screenshot](screenshots/Q16.png)

---

## 🔹 **17. Countries with Low Population Density**

**Scenario:**  
Agricultural research institute studying low-density countries.

**SQL File:** `17_low_population_density.sql`

**Screenshot:**  
![Screenshot](screenshots/Q17.png)

---

## 🔹 **18. Cities with High GDP per Capita**

**Scenario:**  
Economic consulting firm researching wealthy cities.

**SQL File:** `18_high_gdp_per_capita.sql`

**Screenshot:**  
![Screenshot](screenshots/Q18.png)

---

## 🔹 **19. Cities Ranked 31–40 by Population**

**Scenario:**  
Market research firm analyzing mid-ranked global cities.

**SQL File:** `19_population_rows_31_40.sql`

**Screenshot:**  
![Screenshot](screenshots/Q19.png)




