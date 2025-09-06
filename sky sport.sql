Questions:

1.	Import both the .CSV files in Dbeaver under the database name Sky_Sports

select * from s1;
select * from s2; # grop stage



2.	Write an sql query to show all the UNIQUE team names

select distinct(team) from s2;


3.	Write an SQL query to show name of team which has rank 1 from group 7

select team from s1
where `rank`=1 and `group`=7;


4.	Write an sql query to show count of all teams 

select * from s1;
select * from s2;

select count(team) from s1;# same 32
select count(team) from s2;

5.	Write an SQL query to show matches_played by each team

select team,matches_played from s1 ;


6.	Write an SQL query to show team, percent of wins with respect to matches_played by each team and name the resulting column as wins_percent


select team, (wins/matches_played)*100 as wins_percent 
from s1;



7.	Write an SQL query to show which team has maximum goals_scored and their count

select * from s1;

select team ,goals_scored from s1
where goals_scored =(select max(goals_scored) from s1);



8.	 Write an SQL query to show percent of draws with respect to matches_played round of to 2 digits by each team

select * from  s1;
select team , round((draws/matches_played)*100 ,2) from s1;

9.	 Write an SQL query to show which team has minimum goals_scored and their count

select team ,goals_scored from s1
where goals_scored = (select min(goals_scored) from s1);


10.	 Write an SQL query to show percent of losses with respect to matches_played by each team in ascending order by losses and name the resulting column as losses_percent

select team ,(losses/matches_played)*100 as losses_percent from s1
order by losses_percent asc;




11.	Write an SQL query to show the average goal_difference 

select avg(goal_difference) from s1;

12.	 Write an SQL query to show name of the team where points are 0 

select * from s1;
select  team from s1
where points = 0;
13.	Write a SQL query to show all data where expected_goal_scored is less than exp_goal_conceded

select count(*) from s1 s 
where expected_goal_scored < exp_goal_conceded;


14.	Write an SQL query to show data where exp_goal_difference is in between -0.5 and 0.5

select * from s1 s 
where goal_difference between -0.5 and 0.5;

15.	Write an SQL query to show all data in ascending order by exp_goal_difference_per_90

select * from s1 
order by exp_goal_difference_per_90 asc;



16.	Write an SQL query to show team which has maximum number of players_used

select  team , max(players_used) from s2
group by team
order by max(players_used) desc;



17.	Write an SQL query to show each team name and avg_age in ascending order by avg_age

select * from s2;
select team ,avg_age from s2 
order by avg_age asc;


18.	Write an sql query to show average possession of teams 

select * from s2;
select team ,avg(possession) from s2
group by team;


19.	Write a SQL query to show team which has played atleast 5 games

select team ,games from s2 s 
where games >= 5 ;


20.	Write an SQL query to show all data for which minutes is greater than 600

select * from s2
where minutes >=600;


21.	Write an SQL query to show team, goals, assists in ascending order by goals

select team,goals,assists from s2 s 
order by assists ;

22.	Write an SQL query to show team, pens_made, pens_att in descending order by pens_made

select team, pens_made,pens_att from s2 s 
order by pens_made;



23.	Write an SQL query to show team, cards_yellow, cards_red where cards_red is equal to 1 in ascending order by cards_yellow 

select * from s2;
select team ,cards_yellow,cards_red from s2
where cards_red=1
order by  cards_yellow;

24.	Write an SQL query to show team, goals_per90, assists_per90, goals_assists_per90 in descending order by goals_assists_per90 

select team,goals_per90,assists_per90,goals_assists_per90 from s2 s 
order by goals_assists_per90 desc ;


25.	Write an SQL query to show team, goals_pens_per90, goals_assists_pens_per90 in ascending order by goals_assists_pens_per90 

select team,goals_pens_per90,goals_assists_per90 from s2 
order by goals_assists_per90 asc;


26.	Write an SQL query to show team, shots, shots_on_target, shots_on_target_pct where shots_on_target_pct is less than 30 in ascending order by shots_on_target_pct

select team ,shots,shots_on_target,shots_on_target_pct from s2 s 
where shots_on_target_pct < 30
order by shots_on_target_pct asc;



27.	Write an SQL query to show team, shots_per90, shots_on_target_per90 for team Belgium

select team ,shots_per90 ,shots_on_target_per90 from s2 s 
where team = 'Belgium';


28.	 Write an SQL query to show team, goals_per_shot, goals_per_shot_on_target, average_shot_distance in descending order by average_shot_distance 

select * from s2;
select team ,goals_per_shot,goals_per_shot_on_target,average_shot_distance from s2 s 
order by average_shot_distance desc;


29.	Write an SQL query to show team, errors, touches for which errors is 0 and touches is less than 1500

select team ,errors ,touches from s2 s 
where errors = 0 and touches < 1500 ;



30.	Write an SQL query to show team, fouls which has maximum number of fouls


select team ,max(fouls) from s2
group by team;

31.	Write an SQL query to show team, offisdes which has offsides less than 10 or greater than 20

select * from s2;
select team , offsides from s2 s 
where offsides <10 or offsides >20;


32.	Write an SQL query to show team, aerials_won, aerials_lost, aerials_won_pct in descending order by aerials_won_pct 

select team,aerials_won,aerials_lost,aerials_won_pct  from s2 s 
order by aerials_won_pct desc;


33.	Write an SQL query to show number of teams each group has!


select * from s2;
select count(team),`group` from s1 
group by `group` ;


34.	Write a SQL query to show team names group 6 has

select team ,`group` from  s1
where `group`=6;


35.	Write an SQL query to show Australia belongs to which group 

select team,`group` from s1 s 
where team ='Australia';

select * from s1;

36.	Write an SQL query to show group, average wins by each group 

select avg(wins),`group` from s1
group by `group`;

37.	Write an SQL query to show group, maximum expected_goal_scored by each group in ascending order by expected_goal_scored

select max(expected_goal_scored) max_score ,`group` from s1 
group by `group`
order by max_score asc ;


38.	Write an SQL query to show group, minimum exp_goal_conceded by each group in descending order by exp_goal_conceded 


select min(exp_goal_conceded) min_score,`group` from s1 s 
group by `group`
order by min_score;


39.	Write an SQL query to show group, average exp_goal_difference_per_90 for each group in ascending order by exp_goal_difference_per_90

select avg(exp_goal_difference_per_90) ,`group` from s1 s 
group by `group`
order by avg(exp_goal_difference_per_90);


40.	Write an SQL query to show which team has equal number of goals_scored and goals_against 

select team,goals_scored,goals_against from s1
where  goals_scored =goals_against;


41.	Write an SQL query to show which team has maximum players_used 

select team,max(players_used) from s2
group by team;


42.	Write an SQL query to show team, players_used, avg_age, games, minutes where minutes lessthan 500 and greater than 200

select team ,players_used ,avg_age,games,minutes from s2 s 
where minutes < 500 and minutes > 200;


43.	Write an SQL query to show all data of group_stats in ascending order BY points

select * from s1 
order by points asc;

44.	Write an SQL query to show ALL UNIQUE team in ascending order by team

select distinct(team) from s1 s 
order by team;


45.	 Write an SQL query to show average avg_age of each group and arrange it in descending order by avg_age. 

select s1.`group`,avg(s2.avg_age)
from s1 inner join s2
on s1.team =s2.team
group by s1.`group`
order by avg(s2.avg_age) desc;
 


46.	Write an SQL query to show sum of fouls for each group and arrange it in ascending order by fouls.

select sum(s2.fouls) total_fouls,s1.`group` 
from s1 inner join s2 
on s1.team=s2.team 
group by s1.`group` 
order by total_fouls;

47.	Write an SQL query to show total number of games for each group and arrange it in descending order by games. 

select count(s2.games),s1.`group` 
from s1 inner join s2 
on s1.team =s2.team
group by s1.`group`
order by count(s2.games);

48.	Write an SQL query to show total number of players_used for each group and arrange it in ascending order by players_used. 

select count(s2.players_used),s1.`group`
from s1 inner join s2
on s1.team = s2.team 
group by s1.`group`
order by count(s2.players_used) asc;

49.	Write an SQL query to show total number of offsides for each group and arrange it in ascending order by offsides.

select count(s2.offsides),s1.`group` 
from s1 inner join s2 
on s1.team = s2.team 
group by s1.`group`
order by count(s2.offsides) asc;

50.	Write an SQL query to show average passes_pct for each group and arrange it in descending order by passes_pct.

select avg(s2.passes_pct),s1.`group`
from s1 inner join s2
on s1.team =s2.team 
group by s1.`group`
order by avg(s2.passes_pct) asc;

51.	Write an SQL query to show average goals_per90 for each group and arrange it in ascending order by goals_per90.

select avg(s2.goals_per90),s1.`group` 
from s1 inner join s2
on s1.team =s2.team 
group by s1.`group` 
order by avg(s2.goals_per90) asc ;


select * from s1;
select * from s2;