SELECT  
COUNT(*) AS total_count,
    SUM(CASE WHEN tripduration IS NULL THEN 1 ELSE 0 END) AS tripduration_nulls,
    SUM(CASE WHEN stoptime IS NULL THEN 1 ELSE 0 END) AS stoptime_nulls,
    SUM(CASE WHEN start_station_id IS NULL THEN 1 ELSE 0 END) AS s_station_id_nulls,
    SUM(CASE WHEN start_station_name IS NULL THEN 1 ELSE 0 END) AS s_station_name_null,
    SUM(CASE WHEN start_station_latitude IS NULL THEN 1 ELSE 0 END) AS s_station_latitude_null,
    SUM(CASE WHEN start_station_longitude IS NULL THEN 1 ELSE 0 END) AS s_station_longitude_null,
    SUM(CASE WHEN end_station_id IS NULL THEN 1 ELSE 0 END) AS e_station_id_null,
    SUM(CASE WHEN end_station_name IS NULL THEN 1 ELSE 0 END) AS e_station_name_null,
    SUM(CASE WHEN end_station_longitude IS NULL THEN 1 ELSE 0 END) AS e_station_longitude_null,
    SUM(CASE WHEN bikeid IS NULL THEN 1 ELSE 0 END) AS bikeid_null,
    SUM(CASE WHEN usertype IS NULL THEN 1 ELSE 0 END) AS usertype_null,
    SUM(CASE WHEN birth_year IS NULL THEN 1 ELSE 0 END) AS birth_year_null,
    SUM(CASE WHEN gender IS NULL THEN 1 ELSE 0 END) AS gender_null,
    SUM(CASE WHEN customer_plan IS NULL THEN 1 ELSE 0 END) AS customer_plan_null
FROM `reto-tecnico-431721.citybikes.city_bikes_trips`
