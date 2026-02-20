# TV Company Database — Data Modelling & SQL (Undergraduate Project)

Relational database design + SQL implementation for a **TV company** scenario:
- store TV **series**, their **episodes**
- store **actors** associated with a series
- store **directors** associated with an episode

Artifacts included:
- ERD (`docs/ERD.png`) + editable Draw.io source (`docs/ERD.drawio`)
- Implementation screenshots from phpMyAdmin (see `outputs/screenshots/`)
- Coursework slides (`docs/Data_modelling_and_analysis_presentation.pptx`)
- SQL scripts (schema, sample data, queries, constraint tests)

## Why this is portfolio-worthy

If you’re applying for football analytics roles, this is a **supporting** project:
- shows you can **design data models** (useful for match/event/performance databases)
- demonstrates practical **SQL joins + constraints** and basic data quality checks

It’s not a “headline” project, but it’s solid evidence of core **SQL + data modelling** skills.

## Quick start (MySQL / phpMyAdmin)

1. Create a database (e.g. `tv_series`)
2. Run:
   - `sql/schema.sql`
   - `sql/sample_data.sql` (optional)
3. Try the example queries:
   - `sql/queries.sql`
4. Optional constraint checks:
   - `sql/constraint_tests.sql`

## Schema overview

Tables:
- `series(series_id, series_title, series_budget)`
- `episodes(episode_id, episode_title, series_id → series.series_id)`
- `actors(actor_id, first_name, last_name, actor_nickname NULL, actor_rating, amount_of_payment, series_id → series.series_id)`
- `directors(director_id, first_name, last_name, director_nickname NULL, amount_of_payment, episode_id → episodes.episode_id)`

## Football analytics adaptation idea (optional)

If you ever want a football-flavoured version, the same modelling patterns map nicely to:
- `matches`, `teams`, `players`
- `events` (shots, passes) referencing `match_id` + `player_id`
- `lineups` / `appearances`
