-- DB & TALE CREATION

-- 1. Create a database
CREATE DATABASE instagram_influencers;

-- 2. Use the database
USE instagram_influencers;

-- 3. Create the influencers table
CREATE TABLE influencers(
    rank INT PRIMARY KEY,
    channel_info VARCHAR(100),
    influence_score DECIMAL(5, 2),
    posts INT,
    followers INT,
    avg_likes INT,
    sixty_day_eng_rate DECIMAL(10, 6),
    new_post_avg_like INT,
    total_likes INT,
    country VARCHAR(50)
);


-- BASIC INFORMATION
-- Total number of influencers
SELECT COUNT(*) AS total_influencers FROM influencers;

-- Total followers
SELECT SUM(followers) AS total_followers FROM influencers;

-- Average influence score
SELECT AVG(influence_score) AS avg_influence_score FROM influencers;


-- TOP INFLUENCER
-- Top 10 influencers by influence score
SELECT channel_info, influence_score, followers, avg_likes
FROM influencers
ORDER BY influence_score DESC
LIMIT 10;

-- Top 10 influencers by followers
SELECT channel_info, followers, influence_score
FROM influencers
ORDER BY followers DESC
LIMIT 10;

-- Top 10 influencers by engagement rate
SELECT channel_info, followers, sixty_day_eng_rate
FROM influencers
ORDER BY sixty_day_eng_rate DESC
LIMIT 10;

-- Top 10 influencers by like-to-follower ratio
SELECT channel_info, followers, avg_likes, 
       (avg_likes / followers) AS like_to_follower_ratio
FROM influencers
ORDER BY like_to_follower_ratio DESC
LIMIT 10;

-- COUNTRY INSIGHTS
-- Number of influencers by country
SELECT country, COUNT(*) AS influencer_count
FROM influencers
GROUP BY country
ORDER BY influencer_count DESC;

-- Average engagement rate per country
SELECT country, AVG(sixty_day_eng_rate) AS avg_eng_rate
FROM influencers
GROUP BY country
ORDER BY avg_eng_rate DESC;


-- ENGAGEMENT ANALYSIS
-- Highest engagement rate influencers
SELECT channel_info, followers, sixty_day_eng_rate
FROM influencers
ORDER BY sixty_day_eng_rate DESC
LIMIT 10;
