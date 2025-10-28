# Instagram Influencer Analytics Dashboard

A **Power BI project** analyzing **Top Instagram Influencers**, exploring metrics like followers, average likes, engagement (60-day), and country distribution.  
This project combines **SQL**, **data cleaning**, and **interactive visualizations** to provide actionable insights for brands and marketing analysts.

---

## 🔹 Project Overview

The **Instagram Influencer Analytics Dashboard** delivers insights into the social reach and engagement of top global influencers.  
It helps brands identify potential collaborators based on data-driven metrics such as engagement rate, country reach, and total likes.

### Key Insights:
- 📈 Top influencers by followers and engagement  
- 🌍 Country-wise influencer distribution  
- 💬 Average likes and engagement trends (60-day)  
- 🧮 Influence score and ranking metrics  

---

## 📄 Data Dictionary

| Column | Type | Description |
|---------|------|-------------|
| **rank** | int | Global rank by influence score |
| **channel_info** | text | Influencer username / handle |
| **followers** | int | Number of followers |
| **avg_likes** | int | Average likes per post |
| **sixty_day_eng_rate** | float | Engagement rate across last 60 days |
| **new_post_avg_like** | int | Avg. likes on most recent posts |
| **total_likes** | bigint | Total likes received across posts |
| **country** | text | Influencer’s country |

---


## 🚀 How to Use

1. **Download** the `.pbix` file and open it in **Power BI Desktop**.  
2. **Load** the dataset `top_insta_influencers_data.csv`.  
3. **Run** the `SQL_script.sql` file in **PostgreSQL** (or compatible RDBMS) to reproduce backend calculations.  
4. **Explore** the dashboard filters for:
   - Country  
   - Engagement Rate buckets  
   - Follower range  

---


## 🧰 Tech Stack

| Tool | Purpose |
|------|----------|
| **Power BI** | Interactive data visualization |
| **SQL** | Data analysis and aggregation |
| **Excel/powerquery** | Data preprocessing and cleaning |

---


## 🧑‍💻 Author

**Varshith Chilagani**  
