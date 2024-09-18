SELECT 
  (COUNT(CASE WHEN birth_year IS NULL THEN 1 END) * 100.0 / COUNT(*)) AS null_percentage
FROM 
  `reto-tecnico-431721.citybikes.city_bikes_trips`;
