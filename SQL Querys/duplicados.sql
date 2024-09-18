WITH Duplicates AS (
  SELECT 
    stoptime, 
    bikeid, 
    COUNT(*) AS occurrence_count
  FROM 
    `reto-tecnico-431721.citybikes.city_bikes_trips`
  GROUP BY 
    stoptime, 
    bikeid
  HAVING 
    COUNT(*) > 1
)
SELECT 
  t.stoptime, 
  t.bikeid, 
  COUNT(*) AS total_duplicates
FROM 
  `reto-tecnico-431721.citybikes.city_bikes_trips` t
JOIN 
  Duplicates d
ON 
  t.stoptime = d.stoptime AND t.bikeid = d.bikeid
GROUP BY 
  t.stoptime, 
  t.bikeid
