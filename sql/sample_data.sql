-- Minimal sample data to demonstrate joins (edit freely)
INSERT INTO series (series_title, series_budget) VALUES
('The Walking Dead', 1000000),
('Game of Thrones', 1000000),
('Peaky Blinders', 250000);

INSERT INTO episodes (episode_title, series_id) VALUES
('Th', 1),
('Rj', 1),
('Wq', 2),
('Df', 2),
('Lj', 2),
('Mn', 2),
('Ki', 3),
('Lt', 3),
('Pa', 3);

-- Directors linked to specific episodes (example)
INSERT INTO directors (first_name, last_name, director_nickname, amount_of_payment, episode_id) VALUES
('Kevin', 'James', NULL, 25000, 1),
('Kyle', 'Jones', NULL, 25000, 2),
('Peter', 'Matthews', NULL, 30000, 7);

-- Actors table (example)
INSERT INTO actors (first_name, last_name, actor_nickname, actor_rating, amount_of_payment, series_id) VALUES
('Andrew', 'Lincoln', NULL, 9, 50000, 1),
('Kit', 'Harington', NULL, 9, 60000, 2),
('Cillian', 'Murphy', NULL, 9, 55000, 3);
