-- CREATE DATABASE Gen_Z_socialmediausage_analysis;
USE Gen_Z_socialmediausage_analysis;
select * from genz_socialmedia_usage;
select count(*) AS total_users from genz_socialmedia_usage;	
SELECT AVG(daily_usage_hours) AS avg_daily_usage_hours FROM genz_socialmedia_usage;
SELECT primary_platform, COUNT(*) AS total_users FROM genz_socialmedia_usage GROUP BY primary_platform ORDER BY total_users DESC LIMIT 1;
SELECT addiction_level, COUNT(*) AS total_users FROM genz_socialmedia_usage GROUP BY addiction_level;
SELECT country, AVG(daily_usage_hours) AS hig_daily_usage_hrs FROM genz_socialmedia_usage GROUP BY country ORDER BY hig_daily_usage_hrs DESC;
SELECT country, AVG(mental_health_score) AS avg_mental_health_score FROM genz_socialmedia_usage GROUP BY country ORDER BY avg_mental_health_score DESC;
SELECT age_group, addiction_level, COUNT(*) AS total_users FROM genz_socialmedia_usage GROUP BY age_group, addiction_level ORDER BY age_group;
SELECT age_group, COUNT(*) AS high_addicted_users FROM genz_socialmedia_usage WHERE addiction_level = "High"
GROUP BY age_group ORDER BY high_addicted_users DESC;
SELECT gender, AVG(daily_usage_hours) AS avg_daily_usage_hrs FROM genz_socialmedia_usage GROUP BY gender ORDER BY avg_daily_usage_hrs DESC;
SELECT purpose, addiction_level, COUNT(*) AS addiction_count FROM genz_socialmedia_usage GROUP BY purpose, addiction_level ORDER BY addiction_count DESC;
SELECT COUNT(night_usage) AS total_night_user FROM genz_socialmedia_usage WHERE night_usage=1;
SELECT primary_platform, avg(avg_session_minutes) AS avg_session_duration FROM genz_socialmedia_usage GROUP BY primary_platform;
SELECT country, COUNT(*) AS bad_mental_health_user FROM genz_socialmedia_usage WHERE mental_health_category = "poor" 
GROUP BY country ORDER BY bad_mental_health_user DESC;
SELECT screen_time_before_sleep, addiction_level, COUNT(*) AS total_user FROM genz_socialmedia_usage 
GROUP BY screen_time_before_sleep, addiction_level ORDER BY screen_time_before_sleep DESC;
SELECT age_group, primary_platform, COUNT(*) AS total_users FROM genz_socialmedia_usage 
GROUP BY age_group, primary_platform ORDER BY age_group, total_users DESC;
SELECT country, primary_platform, COUNT(*) AS total_users FROM genz_socialmedia_usage 
GROUP BY country, primary_platform ORDER BY country, total_users DESC;
SELECT mental_health_category, COUNT(*) AS total_users FROM genz_socialmedia_usage GROUP BY mental_health_category;
SELECT gender, AVG(avg_session_minutes) AS highest_session_duration FROM genz_socialmedia_usage 
GROUP BY gender ORDER BY highest_session_duration DESC;
SELECT num_platforms_used, addiction_level, COUNT(*) AS total_users FROM genz_socialmedia_usage 
GROUP BY num_platforms_used, addiction_level ORDER BY total_users DESC;
SELECT country, COUNT(*) highly_addicted_users FROM genz_socialmedia_usage 
GROUP BY country ORDER BY highly_addicted_users DESC;
SELECT addiction_level, AVG(mental_health_score) AS avg_mental_health_score FROM genz_socialmedia_usage 
GROUP BY addiction_level ORDER BY avg_mental_health_score DESC; 
SELECT age_group, AVG(daily_usage_hours) AS avg_usage_hrs FROM genz_socialmedia_usage 
GROUP BY age_group ORDER BY avg_usage_hrs DESC;
SELECT gender, addiction_level, COUNT(*) AS total_users FROM genz_socialmedia_usage 
GROUP BY gender, addiction_level ORDER BY gender, total_users DESC;
SELECT night_usage, AVG(mental_health_score) AS avg_mental_health_score FROM genz_socialmedia_usage GROUP BY night_usage;
SELECT purpose, AVG(daily_usage_hours) AS avg_daily_usage_hours FROM genz_socialmedia_usage
GROUP BY purpose ORDER BY avg_daily_usage_hours DESC;