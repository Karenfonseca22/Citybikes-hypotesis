SELECT
birth_year,
  CASE 
    WHEN birth_year IS NULL THEN 0 
    ELSE birth_year 
  END AS birth_year_corrected
FROM `reto-tecnico-431721.citybikes.city_bikes_trips`
