SELECT 
  tripduration_minutes,
  stoptime,
  stoptime_date,
  start_station_id,
  start_station_name,
  start_station_latitude,
  start_station_longitude,
  end_station_id,
  end_station_name,
  end_station_latitude,
  end_station_longitude,
  bike_id,
  usertype,
  gender,
  birth_year,
  CASE 
    WHEN birth_year >= 1997 THEN 'Generación Z'
    WHEN birth_year >= 1981 THEN 'Millennials'
    WHEN birth_year >= 1965 THEN 'Generación X'
    WHEN birth_year >= 1946 THEN 'Baby Boomers'
    WHEN birth_year >= 1928 THEN 'Silent Generation'
    ELSE 'Greatest Generation'
  END AS generacion
FROM 
  `reto-tecnico-431721.citybikes.version_1`
WHERE 
  gender != 'unknown'
  AND tripduration_minutes < 10000
  AND start_station_latitude > 30
  AND start_station_longitude < -70
  AND end_station_longitude < -70
