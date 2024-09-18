-- Se corrigio la latirud ya que en la base de datos origen estaba escalada, estas medidas tienen que dejarme ver una ubicación

SELECT 
  CAST(REPLACE(start_station_latitude, '.', '') AS FLOAT64) / 100000000.0 AS start_station_latitude,
  CAST(REPLACE(end_station_latitude, '.', '') AS FLOAT64) / 100000000.0 AS end_station_latitude
FROM 
  `reto-tecnico-431721.citybikes.city_bikes_trips`;
