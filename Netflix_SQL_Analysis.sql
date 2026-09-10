-- SELECT *
-- FROM netflix_db.netflix__data;
USE netflix_db;

-- Total content Count
-- SELECT COUNT(*) AS total_content
-- FROM netflix__data;

--  Total Movies 
-- SELECT Type, COUNT(*) AS total_movies
-- FROM netflix__data
-- WHERE Type="Movie";

-- Total TV Shows
-- SELECT Type, COUNT(*) AS total_tv_shows
-- FROM netflix__data
-- WHERE Type="TV Show";

-- Movies percentage
-- SELECT ROUND(6112*100.0/8784,2) AS movies_percentage;

-- TV Shows percentage
-- SELECT ROUND(2672*100.0/8784,2) AS tv_shows_percentage;

-- Total countries
-- SELECT COUNT(DISTINCT Country) AS total_countries
-- FROM netflix__data;

-- Total Directors
-- SELECT COUNT(DISTINCT Director) AS total_directors
-- FROM netflix__data;



-- content by release year 
-- SELECT release_year,COUNT(*)AS total_content
-- FROM netflix__data
-- GROUP BY release_year
-- ORDER BY release_year DESC
-- LIMIT 10;

-- Top 10 countries by content
-- SELECT country,COUNT(*) AS total_content
-- FROM netflix__data
-- WHERE country <>"Not Available"
-- GROUP BY country
-- ORDER BY total_content DESC
-- LIMIT 10;


-- top 10 Genres
-- SELECT listed_in,COUNT(*) AS total_content
-- FROM netflix__data
-- GROUP BY listed_in
-- ORDER BY total_content DESC
-- LIMIT 10;

-- Top 5 Rating
-- SELECT rating,COUNT(*) AS total_content
-- FROM netflix__data
-- WHERE rating <>"Not Available"
-- GROUP BY rating
-- ORDER BY total_content DESC
-- LIMIT 5;

-- top 10 Directors
-- SELECT director,COUNT(*) AS total_content
-- FROM netflix__data
-- WHERE director <> "Not Available"
-- GROUP BY director
-- ORDER BY total_content DESC
-- LIMIT 10;


-- Movies vs TV Shows
-- SELECT type,COUNT(*) AS total_content
-- FROM netflix__data
-- GROUP BY type
-- ORDER BY total_content DESC;

-- Avg movies duration analysis
-- SELECT AVG(CAST(REPLACE(duration, ' min', '') AS UNSIGNED)) AS avg_movie_duration
-- FROM netflix__data
-- WHERE type = 'Movie' AND duration <> 'Not Available';


--  Average TV Show Seasons
-- SELECT 
--     AVG(CAST(REPLACE(duration, ' Seasons', '') AS UNSIGNED)) AS avg_tv_show_seasons
-- FROM netflix__data
-- WHERE type = 'TV Show'
--   AND duration <> 'Not Available';


-- Content Added Over Time
-- 10. Content Added Over Time
SELECT 
    YEAR(STR_TO_DATE(date_added, '%d-%b-%y')) AS added_year,
    COUNT(*) AS total_content
FROM netflix__data
WHERE STR_TO_DATE(date_added, '%d-%b-%y') IS NOT NULL
GROUP BY YEAR(STR_TO_DATE(date_added, '%d-%b-%y'))
ORDER BY added_year;
