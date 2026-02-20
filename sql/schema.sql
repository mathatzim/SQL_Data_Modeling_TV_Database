-- TV Company Database (MySQL)
-- Schema: tv_series
-- Tables: series, episodes, actors, directors
-- Based on coursework implementation (phpMyAdmin screenshots)

CREATE TABLE series (
  series_id INT NOT NULL AUTO_INCREMENT,
  series_title VARCHAR(255) NOT NULL,
  series_budget INT NOT NULL,
  PRIMARY KEY (series_id)
);

CREATE TABLE episodes (
  episode_id INT NOT NULL AUTO_INCREMENT,
  episode_title VARCHAR(255) NOT NULL,
  series_id INT NOT NULL,
  PRIMARY KEY (episode_id),
  CONSTRAINT fk_episodes_series
    FOREIGN KEY (series_id) REFERENCES series (series_id)
);

CREATE TABLE actors (
  actor_id INT NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(255) NOT NULL,
  last_name VARCHAR(255) NOT NULL,
  actor_nickname VARCHAR(255) NULL,
  actor_rating INT NOT NULL,
  amount_of_payment INT NOT NULL,
  series_id INT NOT NULL,
  PRIMARY KEY (actor_id),
  CONSTRAINT fk_actors_series
    FOREIGN KEY (series_id) REFERENCES series (series_id)
);

CREATE TABLE directors (
  director_id INT NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(255) NOT NULL,
  last_name VARCHAR(255) NOT NULL,
  director_nickname VARCHAR(255) NULL,
  amount_of_payment INT NOT NULL,
  episode_id INT NOT NULL,
  PRIMARY KEY (director_id),
  CONSTRAINT fk_directors_episodes
    FOREIGN KEY (episode_id) REFERENCES episodes (episode_id)
);
