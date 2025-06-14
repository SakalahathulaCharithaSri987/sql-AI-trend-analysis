create database projects;

use projects;

CREATE TABLE search_trends (
  id INT PRIMARY KEY,
  search_date DATE,
  tool_name VARCHAR(50),
  search_volume INT
);

INSERT INTO search_trends (id, search_date, tool_name, search_volume)
VALUES
(1, '2025-06-01', 'ChatGPT', 9800),
(2, '2025-06-01', 'Midjourney', 4300),
(3, '2025-06-01', 'Claude AI', 2100),
(4, '2025-06-02', 'ChatGPT', 10000),
(5, '2025-06-02', 'Midjourney', 4500),
(6, '2025-06-02', 'Claude AI', 2400),
(7, '2025-06-03', 'ChatGPT', 10200),
(8, '2025-06-03', 'Midjourney', 4700),
(9, '2025-06-03', 'Claude AI', 2200),
(10, '2025-06-04', 'ChatGPT', 9800),
(11, '2025-06-04', 'Midjourney', 5000),
(12, '2025-06-04', 'Claude AI', 2500),
(13, '2025-06-05', 'ChatGPT', 10400),
(14, '2025-06-05', 'Midjourney', 4900),
(15, '2025-06-05', 'Claude AI', 2300),
(16, '2025-06-06', 'ChatGPT', 9600),
(17, '2025-06-06', 'Midjourney', 5200),
(18, '2025-06-06', 'Claude AI', 2600),
(19, '2025-06-07', 'ChatGPT', 10100),
(20, '2025-06-07', 'Midjourney', 4700),
(21, '2025-06-07', 'Claude AI', 2400),
(22, '2025-06-08', 'ChatGPT', 10800),
(23, '2025-06-08', 'Midjourney', 5300),
(24, '2025-06-08', 'Claude AI', 2700),
(25, '2025-06-09', 'ChatGPT', 10700),
(26, '2025-06-09', 'Midjourney', 5000),
(27, '2025-06-09', 'Claude AI', 2500),
(28, '2025-06-10', 'ChatGPT', 11200),
(29, '2025-06-10', 'Midjourney', 5500),
(30, '2025-06-10', 'Claude AI', 2800),
(31, '2025-06-11', 'ChatGPT', 11500),
(32, '2025-06-11', 'Midjourney', 5800),
(33, '2025-06-11', 'Claude AI', 3000),
(34, '2025-06-12', 'ChatGPT', 10900),
(35, '2025-06-12', 'Midjourney', 5600),
(36, '2025-06-12', 'Claude AI', 2600),
(37, '2025-06-13', 'ChatGPT', 10600),
(38, '2025-06-13', 'Midjourney', 5400),
(39, '2025-06-13', 'Claude AI', 2500),
(40, '2025-06-14', 'ChatGPT', 11100),
(41, '2025-06-14', 'Midjourney', 5700),
(42, '2025-06-14', 'Claude AI', 2900),
(43, '2025-06-15', 'ChatGPT', 11300),
(44, '2025-06-15', 'Midjourney', 6000),
(45, '2025-06-15', 'Claude AI', 3100),
(46, '2025-06-16', 'ChatGPT', 11700),
(47, '2025-06-16', 'Midjourney', 6200),
(48, '2025-06-16', 'Claude AI', 3300),
(49, '2025-06-17', 'ChatGPT', 11800),
(50, '2025-06-17', 'Midjourney', 6400),
(51, '2025-06-17', 'Claude AI', 3500);

SELECT * FROM search_trends;


--------------- Query No 1 : Find the most searched AI Tool (Overall)---------------------------------🔍 Why: Identifies the most popular tool based on total interest.

select tool_name, sum(search_volume) as total_search
from search_trends
group by tool_name
order by total_search desc
limit 1;

------------- Query No 2 :  Find average daily search volume for each tool -------------------------- 🔍 Why: Helps understand how consistent or popular each tool is.

select tool_name, round(avg(search_volume),2)as avg_search
from search_trends
group by tool_name
order by avg_search desc;

SELECT tool_name, ROUND(AVG(search_volume), 2) AS average_volume   
FROM search_trends
GROUP BY tool_name;
 
 -----------------Note : (We have used round for the purpose to get 2 digits after the point in the avg column) --------------------
 

 ----------------Query No 3 : Show total search volume for each date (across all tools) ------------------------- Why : Reveals trends in public interest over time.
 
 select search_date, sum(search_volume) as total_search
 from search_trends
 group by search_date
 order by search_date asc;
 
 
 ----- Including Tool_name Column  -------
  select tool_name, search_date, sum(search_volume) as total_search
 from search_trends
 group by tool_name,search_date
 order by search_date asc;
 
 ------------- Query No 4 : Find the day with the highest total search traffic ---------------------------------- Shows peak traffic day — useful for marketing or trend analysis.
 
 select search_date, sum(search_volume)as search_traffic
 from search_trends
 group by search_date
 order by search_traffic desc
 limit 1;
 
  
 select id,tool_name,search_date, sum(search_volume)as search_traffic
 from search_trends
 group by id,tool_name ,search_date
 order by search_traffic desc
 limit 1;
 
 --------------- Query No 5 : Daily trend for a specific tool (e.g., ChatGPT) -----------------------------------🔍 Why: Tracks growth or decline for a specific AI tool.
 
 select search_date, search_volume
 from search_trends
 where tool_name = "ChatGPT";

 
---------------- Query No 6 : Find tools that crossed 11,000+ searches in a day -------------------------------- 🔍 Why: Highlights tools with viral spikes in attention.

select * from search_trends 
where search_volume >11000
order by  search_volume desc;


---------------- Query No 7 : Identify the most volatile tool (max - min search volume) ----------------------- 🔍 Why: Helps find which tool had the most fluctuations in popularity.

select tool_name, max(search_volume ) - min(search_volume) as Volatile
from search_trends
group by tool_name
order by Volatile
limit 1;


--------------- Query No 8 : Show total weekly growth per tool (you can consider every 7 rows as a week) ---------- 🔍 Why: Shows how tools performed week-by-week.

select tool_name, sum(search_volume) as weekly_search
from search_trends
where search_date between '2025-06-01' and '2025-06-07'
group by tool_name;

---------------  Query No 9 : Which tool had the highest search on a single day? --------------------------------- Finds the most viral moment for any tool.

select tool_name, search_date, search_volume
from search_trends
order by search_volume
limit 1;

------------- Query No 10 : Rank AI tools by overall popularity (using window function - optional)---------------- Why: Gives you ranked output for dashboards or leaderboards.

select tool_name, sum(search_volume) as total_search,
rank () over (order by sum(search_volume)desc) as rank_position
from search_trends
group by tool_name;


select * from search_trends;