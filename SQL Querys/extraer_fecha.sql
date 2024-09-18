-- Extraer fecha de un dato tipo TIMESTAMP
SELECT 
  stoptime,
  DATE(stoptime) AS stoptime_date
FROM 
  `reto-tecnico-431721.citybikes.city_bikes_trips`;
