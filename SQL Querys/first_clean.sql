SELECT
stoptime,
DATE(stoptime) AS stoptime_date,
  tripduration / 60.0 AS tripduration_minutes,
  CASE 
    WHEN birth_year IS NULL THEN 0 
    ELSE birth_year 
  END AS birth_year,
  CAST(REPLACE(start_station_latitude, '.', '') AS FLOAT64) / 100000000.0 AS start_station_latitude,
  CAST(REPLACE(end_station_latitude, '.', '') AS FLOAT64) / 100000000.0 AS end_station_latitude
FROM `reto-tecnico-431721.citybikes.city_bikes_trips`
