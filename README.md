# 📊 AI Trend Tracker – SQL Case Study

A mini case study analyzing the search volume trends of popular AI tools – **ChatGPT, Midjourney, and Claude AI** – over a 17-day period using SQL.

---

## 📌 Project Summary

Analyzed 51 rows of search trend data from 3 AI tools using SQL. The goal was to identify:
- Which tools are most popular
- How public interest changes daily
- When spikes or viral moments occurred

> ✅ Used only **basic to intermediate SQL**  
> ✅ No JOINs used  
> ✅ Derived **10 key business insights**  
> ✅ Suitable for beginner-level Data Analyst portfolios

---

## 🧠 Objective

To analyze how public interest in AI tools changes over time using SQL-only logic, and derive real insights from raw trend data.

---

## 📂 Database Design

**Database Name:** `projects`  
**Table:** `search_trends`

| Column Name   | Data Type | Description                       |
|---------------|-----------|-----------------------------------|
| `id`          | INT       | Unique ID                         |
| `search_date` | DATE      | Date of search                    |
| `tool_name`   | VARCHAR   | AI Tool name (e.g., ChatGPT)      |
| `search_volume`| INT      | Number of searches on that day   |

**Total Rows:** 51  
**Time Period:** 2025-06-01 to 2025-06-17

---

## 🛠️ Tools & Skills Used

- SQL (MySQL Workbench)
- Aggregate Functions (`SUM`, `AVG`, `MAX`, `MIN`)
- Filtering (`WHERE`, `LIMIT`, `BETWEEN`)
- Grouping (`GROUP BY`, `ORDER BY`)
- Window Functions (`RANK()`)

---

## 🔍 Key Business Insights

| No | Analysis Task                    | Insight                                 |
|----|----------------------------------|-----------------------------------------|
| 1  | Most popular AI tool             | ChatGPT has the highest total searches |
| 2  | Avg daily search volume          | ChatGPT ≈ 10,676/day                    |
| 3  | Search trend per day             | Public interest is steadily increasing  |
| 4  | Peak traffic day                 | June 17 with 21,700 total searches     |
| 5  | Daily trend for ChatGPT          | Consistent upward growth               |
| 6  | Viral spikes (>11K/day)          | ChatGPT crossed 11K+ on 6 occasions     |
| 7  | Most volatile tool               | ChatGPT (Range: 9600 to 11800)          |
| 8  | Weekly growth (Week 1)           | ChatGPT leads with 69,900 searches      |
| 9  | Highest single-day search        | ChatGPT: 11,800 on June 17             |
| 10 | Popularity ranking by tool       | 1. ChatGPT 2. Midjourney 3. Claude AI  |

---

## 📸 Screenshots (Sample)

- `table_schema.png`
- `query1_result.png`
- ...
> *(Upload these under the repository as `/screenshots` folder)*

---

## 📄 How to Use

1. Clone the repo or download the `.sql` file
2. Run the `CREATE TABLE` and `INSERT` statements
3. Execute the queries listed in `ai_trend_analysis_queries.sql` or README
4. View insights directly in MySQL or any SQL editor

---

## 📈 Optional Add-Ons

- Power BI dashboard
- Excel trend chart
- Resume/portfolio feature

---

## 📬 Contact

**Charitha Sri Sakalabhathula**  
LinkedIn : https://www.linkedin.com/charithasri9
GitHub : https://github.com/SakalabhathulaCharithaSri987
E-Mail : charithasrisakalabhathula@gmail.com

---

> 💡 *This project was created as part of my journey to become a Data Analyst. Feedback and collaboration welcome!*
