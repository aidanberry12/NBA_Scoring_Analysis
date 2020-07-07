select seasons_stats.Player as Player_Name, PTS as Points, Tm as Team, players.height as height, weight, Pos as Position, collage, seasons_stats.Age, "yes" as All_Star
from seasons_stats, players
where seasons_stats.Player =players.Player
