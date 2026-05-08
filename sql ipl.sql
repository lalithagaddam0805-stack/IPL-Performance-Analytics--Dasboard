create database ipl_db;
use ipl_db;
show databases;
select * from ipl_data limit 10;
select count(distinct match_id)as total_matches from ipl_data;
SELECT winner, COUNT(*) AS wins
FROM ipl_data
GROUP BY winner
ORDER BY wins DESC;
select batter,sum(batsman_runs)as runs
from ipl_data
group by batter
order by runs desc
limit 10;
select bowler,count(*)as wickets
from ipl_data
where player_dismissed is not null
group by bowler
order by wickets desc
limit 10;
select round(count(*)*100.0/count(distinct match_id),2)astoss_winn_percentage
from ipl_data
where toss_winner=winner;
select season,winner,count(*)as wins
from ipl_data
group by season,winner
order by season;