---
output: github_document
---
## Data `nba2018-playerrs.csv`

Here's the description of the data variables:

-  `team_name`: the team that the player plays for.
-  `game_date`: the date of the game.
-  `season`: year of the season.
-  `opponent`: opponent team
-  `period`: an NBA game is divided in 4 periods of 12 mins each. For example, a value
for period = 1 refers to the first period (the first 12 mins of the game).
- `minutes_remaining`: amount of time in minutes that remained to be played in a given period.
- `seconds_remaining`: amount of time in seconds that remained to be played in a given period.
- `shot_made_flag`: indicates whether a shot was made (y) or missed (n).
- `action_type`: the basketball moves used by players, either to pass by
defenders to gain access to the basket, or to get a clean pass to a teammate to score a
two pointer or three pointer.
- `shot_type`: indicates whether a shot is a 2-point field goal, or a 3-point field goal.
- `shot_distance`: distance to the basket (measured in feet).
- `experience`: years of experience in the NBA.
- `x` and `y`: court coordinates (measured in inches) where a shot occurred.
