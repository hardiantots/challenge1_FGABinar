# 1. Total active covid-19 case in every province
SELECT Province, Location_ISO_Code,SUM(Total_Active_Cases) AS active_cases
FROM `challenge-1-binar-415902.covid19_data.case_indo`
WHERE Province IS NOT NULL
GROUP BY Location_ISO_Code, Province
ORDER BY active_cases DESC;

# 2. Take 2 location iso code that have fewest total deaths because Covid-19
SELECT Location_ISO_Code, Location, SUM(Total_Deaths) AS total_deaths
FROM `challenge-1-binar-415902.covid19_data.case_indo`
GROUP BY Location_ISO_Code, Location
ORDER BY total_deaths ASC
LIMIT 2;

# 3. Date when case recovered rate in Indonesia is high with total rate
SELECT Date, Case_Recovered_Rate
FROM `challenge-1-binar-415902.covid19_data.case_indo`
GROUP BY Date, Case_Recovered_Rate
ORDER BY Case_Recovered_Rate DESC;

# 4. Total fewest case fatality rate and fewest case recovered rate 
SELECT Location_ISO_Code, Location,SUM(Case_Fatality_Rate) AS fatality_rate
FROM `challenge-1-binar-415902.covid19_data.case_indo`
GROUP BY Location_ISO_Code, Location
ORDER BY fatality_rate ASC;

SELECT Location_ISO_Code, Location,SUM(Case_Recovered_Rate) AS recovered_rate
FROM `challenge-1-binar-415902.covid19_data.case_indo`
GROUP BY Location_ISO_Code, Location
ORDER BY recovered_rate ASC;

# 5. Date when total covid-19 cases touch 30000 cases
SELECT Date, Total_Cases
FROM `challenge-1-binar-415902.covid19_data.case_indo`
WHERE Total_Cases > 30000
ORDER BY Total_Cases ASC;

# 6. Total covid-19 data >= 30.000
SELECT COUNT(Total_Cases) AS total_new_cases
FROM `challenge-1-binar-415902.covid19_data.case_indo`
WHERE Total_Cases >= 30000;