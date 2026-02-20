-- Data-quality / constraint checks (expected to FAIL when constraints are enforced)
-- Run these one-by-one and observe the error messages in MySQL.

-- C5) Wrong data type example (should fail: series_budget expects INT)
-- INSERT INTO series (series_title, series_budget) VALUES ('BadBudgetShow', 'not_a_number');

-- Foreign key enforcement (should fail if series_id doesn't exist)
-- INSERT INTO episodes (episode_title, series_id) VALUES ('InvalidSeries', 999);

-- C6) Nullable column check (should succeed: actor_nickname is nullable)
-- INSERT INTO actors (first_name, last_name, actor_nickname, actor_rating, amount_of_payment, series_id)
-- VALUES ('Test', 'Actor', NULL, 5, 1000, 1);
