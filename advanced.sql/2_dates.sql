/*
SELECT job_posted_date
FROM job_postings_fact
LIMIT 10;
*/

/*
SELECT 
    '2023-02-19' ::DATE,
    '123' ::INTEGER,
    'TRUE' ::BOOLEAN,
    '3.14' ::REAL;
*/

/*
SELECT 
    job_title_short AS title,
    job_location AS location,
    job_posted_date ::DATE AS date
FROM
    job_postings_fact;
*/

/*
SELECT 
    job_title_short AS title,
    job_location AS location,
    job_posted_date AT TIME ZONE 'UTC' AT TIME ZONE 'IST' AS date
FROM
    job_postings_fact
LIMIT 10;
*/

/*
SELECT 
    job_title_short AS title,
    job_location AS location,
    job_posted_date AT TIME ZONE 'UTC' AT TIME ZONE 'IST' AS date,
    EXTRACT(MONTH FROM job_posted_date) AS date_month,
    EXTRACT(YEAR FROM job_posted_date) AS date_year

FROM
    job_postings_fact
LIMIT 10;
*/

/*
SELECT
    COUNT(job_id) AS job_posted_count,
    EXTRACT(MONTH FROM job_posted_date) AS date_month
FROM 
    job_postings_fact
WHERE
    job_title_short = 'Data Analyst'
GROUP BY 
    date_month
ORDER BY 
    job_posted_count DESC
LIMIT 12;
*/