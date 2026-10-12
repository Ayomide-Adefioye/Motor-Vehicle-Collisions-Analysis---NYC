SHOW VARIABLES LIKE 'secure_file_priv';

SELECT *
FROM vehicle_collision;

#ARE TRAFFIC CRASHES RISING OR FALLING OVER TIME?

SELECT YEAR(crash_date) AS year, MONTH(crash_date) AS month, COUNT(*) AS total_crashes
FROM vehicle_collision
GROUP BY year,month
ORDER BY total_crashes DESC, year;

SELECT  MONTHNAME(crash_date) AS month, COUNT(*) AS total_crashes
FROM vehicle_collision
GROUP BY month
ORDER BY total_crashes DESC;

#WHICH BOROUGHS, STREET, OR INTERSECTIONS ARE THE MOST DANGEROUS?
SELECT borough, COUNT(*) AS crashes
FROM vehicle_collision
WHERE borough IS NOT NULL
GROUP BY borough
ORDER BY crashes DESC;

#WHAT ARE THE LEADING CAUSES OF CRASHES, AND DO THEY VARY BY BOROUGH?
SELECT contributing_factor_vehicle_1, COUNT(*) AS crashes, borough
FROM vehicle_collision
WHERE contributing_factor_vehicle_1 IS NOT NULL AND contributing_factor_vehicle_1 != 'Unspecified' 
AND borough IS NOT NULL
GROUP BY contributing_factor_vehicle_1, borough
ORDER BY borough, crashes DESC;

#WHICH GROUP(PEDESTRIANS, CYCLISTS, MOTORISTS) FACE THE HIGHEST RISK OF INJURY OR DEATH?
SELECT SUM(number_of_pedestrians_injured) pedestrians_injured,
SUM(number_of_pedestrians_killed) pedestrians_killed,
SUM(number_of_cyclists_injured) cyclists_injured,
SUM(number_of_cyclists_killed) cyclists_killed,
SUM(number_of_motorists_injured) motorists_injured,
SUM(number_of_motorists_killed) motorists_killed
FROM vehicle_collision
