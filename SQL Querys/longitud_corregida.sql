-- Corrección de longitud para que me complete la ubicación, de origen viene escalada por eso hay que dividirla
SELECT
start_station_longitude,
  CAST(REPLACE(start_station_longitude, '.', '') AS FLOAT64) / 100000000.0 AS corrected_longitude,
end_station_longitude,
CAST(REPLACE(end_station_longitude, '.', '') AS FLOAT64) / 100000000.0 AS corrected_longitude,
FROM 
  `reto-tecnico-431721.citybikes.city_bikes_trips`;
