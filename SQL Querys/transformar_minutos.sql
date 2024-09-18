-- Transformar a minutos
SELECT 
  tripduration,
  tripduration / 60.0 AS tripduration_minutes
FROM 
  `reto-tecnico-431721.citybikes.city_bikes_trips`
