-- Queries from the coursework (examples)

-- B1) Series title + budget where budget > 500000
SELECT series_title, series_budget
FROM series
WHERE series_budget > 500000;

-- B2) All series and their episodes
SELECT s.series_title, e.episode_title
FROM series s
JOIN episodes e ON s.series_id = e.series_id;

-- B3) Directors and the episodes they directed + series for each episode
SELECT s.series_title, e.episode_title, d.first_name, d.last_name
FROM series s
JOIN episodes e ON s.series_id = e.series_id
JOIN directors d ON e.episode_id = d.episode_id;
