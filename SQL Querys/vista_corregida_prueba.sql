SELECT
  tripduration / 60.0 AS tripduration_minutes,
  stoptime,
  DATE(stoptime) AS stoptime_date,
  start_station_id,
  start_station_name,
  CAST(REPLACE(start_station_latitude, '.', '') AS FLOAT64) / 100000000.0 AS start_station_latitude,
  CAST(REPLACE(start_station_longitude, '.', '') AS FLOAT64) / 100000000.0 AS start_station_longitude,
  end_station_id,
  end_station_name,
  CAST(REPLACE(end_station_latitude, '.', '') AS FLOAT64) / 100000000.0 AS end_station_latitude,
  CAST(REPLACE(end_station_longitude, '.', '') AS FLOAT64) / 100000000.0 AS end_station_longitude,
  CAST(bikeid AS STRING) AS bike_id,
  usertype,
  birth_year,
  gender
FROM `reto-tecnico-431721.citybikes.city_bikes_trips`
WHERE birth_year IS NOT NULL
  AND CAST(REPLACE(end_station_longitude, '.', '') AS FLOAT64) / 100000000.0 != 0
