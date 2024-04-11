-- STADIUM
CREATE TABLE STADIUM 
(
  STADIUM_ID NUMERIC(2) NOT NULL,
  STADIUM_NAME VARCHAR(50) NOT NULL,
  LOC VARCHAR(20) NOT NULL,
  CAPACITY NUMERIC(7) NOT NULL,
  PRIMARY KEY (STADIUM_ID)
);

INSERT INTO STADIUM
VALUES
(1, 'National Stadium', 'Karachi', 30000),
(2, 'Gaddafi Stadium', 'Lahore', 27000),
(3, 'Rawalpindi Cricket Stadium', 'Rawalpindi', 25000),
(4, 'Multan Cricket Stadium', 'Multan', 35000),
(5, 'Arbab Niaz Stadium', 'Peshawar', 35000),
(6, 'Bugti Stadium', 'Quetta', 35000);

-- MATCH
CREATE TABLE MATCHES 
(
  MATCH_ID NUMERIC(2) NOT NULL,
  MATCH_DATE DATE NOT NULL,
  MATCH_TIME TIME NOT NULL,
  STADIUM_ID NUMERIC(2) NOT NULL,
  MATCH_TYPE VARCHAR(20) NOT NULL,
  TEAM1_NAME NVARCHAR(50) NOT NULL,
  TEAM2_NAME NVARCHAR(50) NOT NULL,
  PRIMARY KEY (MATCH_ID),
  FOREIGN KEY (STADIUM_ID) REFERENCES STADIUM(STADIUM_ID),
  FOREIGN KEY (TEAM1_NAME) REFERENCES TEAM(TNAME),
  FOREIGN KEY (TEAM2_NAME) REFERENCES TEAM(TNAME),
);

INSERT INTO MATCHES
VALUES
(1, '2024-03-25', '18:00:00', 1, 'Round Robin', 'Karachi Kings', 'Lahore Qalandars'),
(2, '2024-03-26', '18:00:00', 2, 'Round Robin', 'Islamabad United', 'Peshawar Zalmi'),
(3, '2024-03-27', '18:00:00', 3, 'Round Robin', 'Multan Sultans', 'Islamabad United'),
(4, '2024-03-28', '18:00:00', 1, 'Round Robin', 'Lahore Qalandars', 'Quetta Gladiators'),
(5, '2024-03-29', '18:00:00', 2, 'Round Robin', 'Karachi Kings', 'Peshawar Zalmi'),
(6, '2024-03-30', '18:00:00', 3, 'Round Robin', 'Multan Sultans', 'Lahore Qalandars'),
(7, '2024-03-31', '18:00:00', 1, 'Round Robin', 'Islamabad United', 'Quetta Gladiators'),
(8, '2024-04-01', '18:00:00', 2, 'Round Robin', 'Karachi Kings', 'Multan Sultans'),
(9, '2024-04-02', '18:00:00', 3, 'Round Robin', 'Lahore Qalandars', 'Islamabad United'),
(10, '2024-04-03', '18:00:00', 1, 'Round Robin', 'Quetta Gladiators', 'Peshawar Zalmi'),
(11, '2024-04-04', '18:00:00', 3, 'Round Robin', 'Multan Sultans', 'Quetta Gladiators'),
(12, '2024-04-05', '18:00:00', 1, 'Round Robin', 'Karachi Kings', 'Quetta Gladiators'),
(13, '2024-04-06', '18:00:00', 2, 'Round Robin', 'Lahore Qalandars', 'Peshawar Zalmi'),
(14, '2024-04-07', '18:00:00', 3, 'Round Robin', 'Islamabad United', 'Multan Sultans'),
(15, '2024-04-08', '18:00:00', 1, 'Round Robin', 'Quetta Gladiators', 'Multan Sultans'),
(16, '2024-04-09', '18:00:00', 2, 'Round Robin', 'Peshawar Zalmi', 'Islamabad United'),
(17, '2024-04-10', '18:00:00', 3, 'Round Robin', 'Lahore Qalandars', 'Karachi Kings'),
(18, '2024-04-11', '18:00:00', 1, 'Round Robin', 'Quetta Gladiators', 'Islamabad United'),
(19, '2024-04-12', '18:00:00', 2, 'Round Robin', 'Multan Sultans', 'Peshawar Zalmi'),
(20, '2024-04-13', '18:00:00', 3, 'Round Robin', 'Karachi Kings', 'Lahore Qalandars'),
(21, '2024-04-14', '18:00:00', 1, 'Round Robin', 'Islamabad United', 'Lahore Qalandars'),
(22, '2024-04-07', '18:00:00', 1, 'Qualifier', 'Karachi Kings', 'Islamabad United'),
(23, '2024-04-08', '18:00:00', 2, 'Eliminator', 'Lahore Qalandars', 'Peshawar Zalmi'),
(24, '2024-04-09', '18:00:00', 3, 'Eliminator', 'Multan Sultans', 'Quetta Gladiators'),
(25, '2024-04-10', '18:00:00', 4, 'Final', 'Islamabad United', 'Multan Sultans');

-- PERFORMANCE
CREATE TABLE PERFORMANCE 
(
  PERFORMANCE_ID NUMERIC(2) NOT NULL,
  MATCH_ID NUMERIC(2) NOT NULL,
  PLAYER_ID INT NOT NULL,
  RUNS NUMERIC(4) NOT NULL,
  WICKETS NUMERIC(2) NOT NULL,
  CATCHES NUMERIC(2) NOT NULL,
  PRIMARY KEY (PERFORMANCE_ID),
  FOREIGN KEY (MATCH_ID) REFERENCES MATCHES(MATCH_ID),
  FOREIGN KEY (PLAYER_ID) REFERENCES PLAYER(PLAYER_ID),
)

INSERT INTO PERFORMANCE
VALUES
(1, 1, 1, 129, 1, 4),
(2, 1, 2, 63, 2, 2),
(3, 1, 3, 27, 5, 5),
(4, 2, 4, 51, 4, 3),
(5, 2, 5, 86, 1, 2),
(6, 2, 6, 11, 5, 0),
(7, 3, 7, 187, 3, 1),
(8, 3, 8, 152, 2, 4),
(9, 3, 9, 98, 3, 3),
(10, 4, 10, 25, 2, 4),
(11, 4, 11, 166, 3, 2),
(12, 4, 12, 179, 0, 3),
(13, 5, 13, 67, 6, 1),
(14, 5, 14, 108, 2, 2),
(15, 5, 15, 99, 6, 0),
(16, 6, 16, 11, 7, 0),
(17, 6, 17, 137, 5, 4),
(18, 6, 18, 38, 3, 3),
(19, 7, 19, 40, 0, 5),
(20, 7, 20, 16, 2, 1),
(21, 8, 1, 168, 1, 3),
(22, 8, 2, 4, 4, 1),
(23, 8, 3, 153, 4, 2),
(24, 9, 3, 53, 0, 0),
(25, 9, 4, 143, 5, 1),
(26, 9, 5, 27, 3, 1),
(27, 10, 5, 96, 7, 1),
(28, 10, 6, 4, 2, 0),
(29, 10, 7, 150, 7, 3),
(30, 11, 7, 70, 5, 2),
(31, 11, 8, 10, 4, 2),
(32, 11, 9, 94, 2, 2),
(33, 12, 9, 51, 0, 4),
(34, 12, 10, 62, 3, 3),
(35, 12, 11, 39, 6, 4),
(36, 13, 11, 25, 0, 5),
(37, 13, 12, 110, 7, 2),
(38, 13, 13, 128, 6, 5),
(39, 14, 13, 38, 7, 0),
(40, 14, 14, 156, 1, 1),
(41, 14, 15, 77, 1, 2),
(42, 15, 15, 20, 0, 0),
(43, 15, 16, 187, 4, 5),
(44, 15, 17, 97, 6, 2),
(45, 16, 17, 51, 3, 2),
(46, 16, 18, 89, 7, 4),
(47, 16, 19, 194, 6, 0),
(48, 17, 19, 5, 4, 1),
(49, 17, 20, 163, 7, 5),
(50, 17, 1, 128, 5, 4),
(51, 18, 1, 183, 6, 1),
(52, 18, 2, 155, 4, 3),
(53, 18, 3, 140, 3, 1),
(54, 19, 3, 10, 7, 0),
(55, 19, 4, 53, 3, 5),
(56, 19, 5, 171, 1, 0),
(57, 20, 5, 52, 7, 3),
(58, 20, 6, 21, 5, 2),
(59, 20, 7, 107, 6, 4),
(60, 20, 8, 3, 1, 5),
(61, 21, 1, 192, 6, 5),
(62, 21, 2, 128, 7, 2),
(63, 21, 3, 94, 3, 3),
(64, 22, 4, 12, 1, 4),
(65, 22, 3, 107, 4, 1),
(66, 22, 9, 153, 6, 3),
(67, 23, 7, 129, 7, 5),
(68, 23, 8, 88, 3, 0),
(69, 23, 8, 45, 1, 2),
(70, 24, 10, 86, 2, 1),
(71, 24, 18, 140, 5, 0),
(72, 24, 12, 29, 6, 4),
(73, 25, 13, 98, 4, 2),
(74, 25, 9, 164, 1, 1),
(75, 25, 3, 41, 7, 3),
(76, 25, 18, 4, 4, 2);

-- WINNER
CREATE TABLE WINNER 
(
  MATCH_ID NUMERIC(2) NOT NULL,
  TNAME NVARCHAR(50) NOT NULL
  FOREIGN KEY (MATCH_ID) REFERENCES MATCHES(MATCH_ID),
  FOREIGN KEY (TNAME) REFERENCES TEAM(TNAME)
)

INSERT INTO WINNER
VALUES 
(1, 'Karachi Kings'),
(2, 'Islamabad United'),
(3, 'Multan Sultans'),
(4, 'Lahore Qalandars'),
(5, 'Karachi Kings'),
(6, 'Multan Sultans'),
(7, 'Islamabad United'),
(8, 'Karachi Kings'),
(9, 'Islamabad United'),
(10, 'Quetta Gladiators'),
(11, 'Multan Sultans'),
(12, 'Karachi Kings'),
(13, 'Lahore Qalandars'),
(14, 'Islamabad United'),
(15, 'Quetta Gladiators'),
(16, 'Peshawar Zalmi'),
(17, 'Lahore Qalandars'),
(18, 'Quetta Gladiators'),
(19, 'Multan Sultans'),
(20, 'Karachi Kings'),
(21, 'Islamabad United'),
(22, 'Islamabad United'),
(23, 'Lahore Qalandars'),
(24, 'Multan Sultans'),
(25, 'Islamabad United')

-- CALCULATE WINS OF EACH TEAM
UPDATE TEAM
SET WINS = (
	SELECT COUNT(*)
	FROM WINNER
	WHERE WINNER.TNAME = TEAM.TNAME
)

-- CALCULATE LOSSES OF EACH TEAM
UPDATE TEAM
SET LOSSES = (
	SELECT COUNT(*)
	FROM MATCHES
	WHERE (
		(MATCHES.TEAM1_NAME = TEAM.TNAME) OR (MATCHES.TEAM2_NAME = TEAM.TNAME)
	) AND MATCHES.MATCH_ID NOT IN (
		SELECT WINNER.MATCH_ID
		FROM WINNER
		WHERE WINNER.TNAME = TEAM.TNAME
	)
)

/* Q2 */
-- Player with the highest number of Catches
SELECT NAME AS [HIGHEST CATCHES]
FROM PLAYER
WHERE (
	SELECT COUNT(CATCHES)
	FROM PERFORMANCE 
	WHERE PLAYER.PLAYER_ID = PERFORMANCE.PLAYER_ID
) = (
	SELECT MAX(TOTAL_CATCHES)
	FROM (
		SELECT COUNT(CATCHES) AS TOTAL_CATCHES
		FROM PERFORMANCE 
		GROUP BY PLAYER_ID
	) AS TOTAL_CATCHES
)

/* Q3 */
--Team Names along with their Home Stadiums
SELECT TNAME, HOME_STADIUM
FROM TEAM

/* Q4 */
-- Total capacity of a specific Stadium
SELECT STADIUM_NAME, CAPACITY
FROM STADIUM

/* Q5 */
--Average Runs scored by players in each team
--Concept Used : Join
SELECT T.TNAME, AVG(PR.RUNS) AS Average_Runs_Scored_By_Player
FROM TEAM T
JOIN PLAYER P ON T.TNAME = P.TEAM_NAME
JOIN PERFORMANCE PR ON P.PLAYER_ID = PR.PLAYER_ID
GROUP BY T.TNAME

/* Q6 */
-- Number of Matches played in a specific Stadium
SELECT STADIUM_NAME, [MATCHES PLAYED]
FROM STADIUM
JOIN (
	SELECT STADIUM_ID AS STD_ID, COUNT(STADIUM_ID) AS [MATCHES PLAYED]
	FROM MATCHES
	GROUP BY STADIUM_ID
) AS STD_ID
ON STADIUM.STADIUM_ID = STD_ID

/* Q7 */
--Total Runs Scored by each player
--Concept Used : Join
SELECT P.PLAYER_ID, P.NAME, SUM(PR.RUNS) AS TotalRuns
FROM PLAYER P
JOIN PERFORMANCE PR ON P.PLAYER_ID = PR.PLAYER_ID
GROUP BY P.PLAYER_ID, P.NAME

/* Q8 */
-- Teams with more than 3 Wins
SELECT TNAME, WINS
FROM TEAM
WHERE WINS > 3

/* Q9 */
--Players that are bowlers
SELECT P.PLAYER_ID, P.NAME
FROM PLAYER P
WHERE P.ROLE = 'Bowler'

/* Q10 */
-- List players who scored more than 50 runs and took at least 3 wickets in a single match
SELECT NAME, [RUNS], [WICKETS]
FROM (
	SELECT NAME, RUNS AS [RUNS], WICKETS AS [WICKETS]
	FROM PLAYER
	JOIN PERFORMANCE
	ON PLAYER.PLAYER_ID = PERFORMANCE.PLAYER_ID
) AS NAME
WHERE [RUNS] > 50 AND [WICKETS] > 3

/* Q11 */
--The team with the highest runs in the tournament
--Concept Used : Join
SELECT TOP 1 T.TNAME, SUM(PR.RUNS) AS Runs
FROM TEAM T
JOIN PLAYER P ON T.TNAME = P.TEAM_NAME
JOIN PERFORMANCE PR ON P.PLAYER_ID = PR.PLAYER_ID
GROUP BY T.TNAME
ORDER BY RUNS DESC

/* Q12 */
-- Show matches along with the winning team name
SELECT TNAME AS [WINNER], MATCHES.MATCH_ID, MATCH_DATE, MATCH_TIME, STADIUM_ID, MATCH_TYPE
FROM MATCHES
JOIN WINNER
ON WINNER.MATCH_ID = MATCHES.MATCH_ID

/* Q13 */
--All match types without duplicates
SELECT DISTINCT MATCH_TYPE
FROM MATCHES

/* Q14 */
-- List stadiums and the number of matches hosted by each
SELECT STADIUM_NAME, [MATCHES HOSTED]
FROM STADIUM
JOIN (
	SELECT STADIUM_ID AS STD_ID, COUNT(STADIUM_ID) AS [MATCHES HOSTED]
	FROM MATCHES
	GROUP BY STADIUM_ID
) AS STD_ID
ON STADIUM.STADIUM_ID = STD_ID

/* Q15 */
--All Players in a specific team
SELECT PLAYER_ID, NAME
FROM PLAYER
WHERE TEAM_NAME = 'Lahore Qalandars'

/* Q16 */
-- List the top 3 players with the most runs scored in final matches
SELECT *
FROM PLAYER
JOIN PERFORMANCE
ON PLAYER.PLAYER_ID = PERFORMANCE.PLAYER_ID
WHERE (PERFORMANCE.RUNS IN (
	SELECT TOP 3 RUNS
	FROM PERFORMANCE
	WHERE MATCH_ID = 25
)) AND PLAYER.PLAYER_ID IN ( 
	SELECT PLAYER_ID
	FROM PERFORMANCE
	WHERE MATCH_ID = 25
) AND (MATCH_ID = 25)

/* Q17 */
--The players who scored more than 50 runs in winning matches
--Concept Used : Join
SELECT DISTINCT P.PLAYER_ID, P.TEAM_NAME, PR.RUNS
FROM PERFORMANCE PR
JOIN (
        SELECT MATCH_ID
        FROM WINNER
     ) AS W ON PR.MATCH_ID = W.MATCH_ID
JOIN Player P ON PR.PLAYER_ID = P.PLAYER_ID
JOIN Winner WIN ON P.TEAM_NAME = WIN.TNAME
WHERE PR.RUNS > 50;

/* Q18 */
-- Determine the top 3 players with the highest aggregate runs scored in Qualifier, Eliminator, and Final matches
SELECT TOP 3 NAME AS [PLAYER], SUM(RUNS) AS [AGGREGATE RUNS]
FROM (
	SELECT NAME, MATCH_ID, RUNS
	FROM PERFORMANCE
	JOIN PLAYER
	ON PLAYER.PLAYER_ID = PERFORMANCE.PLAYER_ID
	WHERE MATCH_ID IN (22, 23, 24, 25)
) AS RES
GROUP BY NAME
ORDER BY SUM(RUNS) DESC

/* Q19 */
--Average Runs and Wickets scored by each team per stadium
--Concept Used : Join
SELECT P.TEAM_NAME, M.Stadium_ID, AVG(PR.RUNS) AS AverageRuns, AVG(PR.WICKETS) AS AverageWickets
FROM MATCHES M
JOIN PERFORMANCE PR ON M.MATCH_ID = PR.MATCH_ID
JOIN PLAYER P ON PR.PLAYER_ID = P.PLAYER_ID
GROUP BY P.TEAM_NAME, M.Stadium_ID

/* Q20 */
-- Find the number of wins each team has achieved in their home stadium
SELECT [WINNER] AS [TEAM], STADIUM_NAME AS [HOME STADIUM], RES2.[WINS]
FROM (
	SELECT STADIUM_NAME, [WINNER], COUNT(*) AS [WINS]
	FROM (
		SELECT STADIUM_NAME, [WINNER]
		FROM STADIUM
		JOIN (
			SELECT STADIUM_ID AS [STD_ID], TNAME AS [WINNER]
			FROM MATCHES
			JOIN WINNER
			ON MATCHES.MATCH_ID = WINNER.MATCH_ID
		) AS STD_ID
		ON STADIUM.STADIUM_ID = STD_ID
	) AS RES
	GROUP BY RES.STADIUM_NAME, RES.WINNER
) AS RES2
JOIN TEAM
ON RES2.STADIUM_NAME = TEAM.HOME_STADIUM
WHERE TEAM.HOME_STADIUM = RES2.STADIUM_NAME AND [WINNER] = TEAM.TNAME

/* Q21 */
--Current number of wins for each team
SELECT W.TNAME AS Team_Name, COUNT(*) AS Wins
FROM WINNER W
GROUP BY W.TNAME

/* Q22 */
-- Identify players whose performance (runs scored, wickets taken, or catches) was pivotal in securing wins for their team
SELECT PLAYER.NAME, MATCHES.MATCH_ID, PERFORMANCE.RUNS,  PERFORMANCE.WICKETS,  PERFORMANCE.CATCHES, PLAYER.TEAM_NAME
FROM PERFORMANCE
JOIN MATCHES ON MATCHES.MATCH_ID = PERFORMANCE.MATCH_ID
JOIN WINNER ON WINNER.MATCH_ID = PERFORMANCE.MATCH_ID
JOIN PLAYER ON PLAYER.PLAYER_ID = PERFORMANCE.PLAYER_ID
WHERE (MATCHES.TEAM1_NAME = WINNER.TNAME OR MATCHES.TEAM2_NAME = WINNER.TNAME) AND (PLAYER.TEAM_NAME = WINNER.TNAME)
AND ((RUNS > 80) OR (CATCHES > 3) OR (WICKETS > 3))

/* Q23 */
--Correlated Nested Queries
--Nested Query where the inner query uses value from outer query
SELECT RUNS FROM PERFORMANCE
WHERE PLAYER_ID IN ( SELECT PLAYER_ID FROM PLAYER )

--Union
--Combines the values of a column from two different tables without duplicates
SELECT PLAYER_ID FROM PLAYER
UNION
SELECT PLAYER_ID FROM PERFORMANCE

--Group By
--Groups the rows that have the same values
SELECT STADIUM_ID, COUNT(*) AS Matches
FROM MATCHES
GROUP BY STADIUM_ID

--Like
--Finds entries with matching substrings
SELECT NAME FROM PLAYER
WHERE NAME LIKE '%E%'

--Having
--Used instead of WHERE because WHERE cannot be used in aggregate
SELECT STADIUM_ID, COUNT(*) AS Matches
FROM MATCHES
GROUP BY STADIUM_ID
HAVING COUNT(*) > 7