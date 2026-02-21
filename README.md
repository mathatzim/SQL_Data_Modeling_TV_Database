# TV Company Database — ERD + SQL Implementation

Relational database design and SQL implementation for a **TV company** scenario:
- TV **series** and their **episodes**
- **actors** linked to a series
- **directors** linked to an episode

This project includes an ERD, a MySQL-ready schema, sample data, example queries, and constraint/data-quality checks.

## What’s included
- **ERD diagram (PNG):** `docs/ERD.png`  
- **Editable ERD (Draw.io):** `docs/ERD.drawio`
- **SQL scripts:**
  - `sql/schema.sql` — tables + PK/FK constraints
  - `sql/sample_data.sql` — example inserts (optional)
  - `sql/queries.sql` — joins + reporting queries
  - `sql/constraint_tests.sql` — basic integrity / quality checks
- **Execution screenshots (phpMyAdmin):** `outputs/screenshots/`
- **Coursework slides:** `docs/Data_modelling_and_analysis_presentation.pptx`

## Schema overview (high-level)
Main entities:
- `series` — TV series metadata (title, budget, etc.)
- `episodes` — each episode belongs to a `series`
- `actors` — actors linked to a `series` (with optional nickname)
- `directors` — directors linked to an `episode` (with optional nickname)

Keys & relationships:
- `episodes.series_id` → `series.series_id`
- `actors.series_id` → `series.series_id`
- `directors.episode_id` → `episodes.episode_id`

## Quick start (MySQL / phpMyAdmin)
1. Create a database (example: `tv_series`)
2. Run in order:
   1) `sql/schema.sql`  
   2) `sql/sample_data.sql` *(optional)*  
3. Try the example queries:
   - `sql/queries.sql`
4. Run integrity checks (optional):
   - `sql/constraint_tests.sql`

## Example queries you’ll find inside
- Join series → episodes (episode lists per series)
- Series cast listing (actors per series)
- Directors per episode
- Simple reporting queries for budgets / payments

## Evidence (screenshots)
See `outputs/screenshots/` for:
- table creation
- inserts
- example query outputs
- constraint/error demonstrations (where relevant)

## Why this project matters
This demonstrates:
- ERD-driven relational modelling
- primary/foreign keys + constraints
- practical JOIN queries
- basic data-quality/integrity thinking

## Optional: football analytics adaptation (1-liner)
The same modelling patterns map cleanly to football databases (matches/teams/players/events/lineups).
