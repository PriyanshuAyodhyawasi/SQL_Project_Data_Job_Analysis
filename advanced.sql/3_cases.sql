-- 1. Tables Query
/*
-- JANUARY
CREATE TABLE jan_jobs AS
    SELECT 
        *
    FROM 
        job_postings_fact
    WHERE
        EXTRACT (MONTH FROM job_posted_date) = 1
        LIMIT 10;

-- FEBRUARY
CREATE TABLE feb_jobs AS
    SELECT 
        *
    FROM 
        job_postings_fact
    WHERE
        EXTRACT (MONTH FROM job_posted_date) = 2
    LIMIT 10;

-- MARCH
CREATE TABLE mar_jobs AS
    SELECT 
        *
    FROM 
        job_postings_fact
    WHERE
        EXTRACT (MONTH FROM job_posted_date) = 3
    LIMIT 10;

-- APRIL
CREATE TABLE apr_jobs AS
    SELECT 
        *
    FROM 
        job_postings_fact
    WHERE
        EXTRACT (MONTH FROM job_posted_date) = 4
    LIMIT 10;

-- MAY
CREATE TABLE may_jobs AS
    SELECT 
        *
    FROM 
        job_postings_fact
    WHERE
        EXTRACT (MONTH FROM job_posted_date) = 5
    LIMIT 10;

-- JUNE
CREATE TABLE jun_jobs AS
    SELECT 
        *
    FROM 
        job_postings_fact
    WHERE
        EXTRACT (MONTH FROM job_posted_date) = 6
    LIMIT 10;

-- JULY
CREATE TABLE jul_jobs AS
    SELECT 
        *
    FROM 
        job_postings_fact
    WHERE
        EXTRACT (MONTH FROM job_posted_date) = 7
    LIMIT 10;

-- AUGUST
CREATE TABLE aug_jobs AS
    SELECT 
        *
    FROM 
        job_postings_fact
    WHERE
        EXTRACT (MONTH FROM job_posted_date) = 8
    LIMIT 10;

-- SEPTEMBER
CREATE TABLE sep_jobs AS
    SELECT 
        *
    FROM 
        job_postings_fact
    WHERE
        EXTRACT (MONTH FROM job_posted_date) = 9
    LIMIT 10;

-- OCTOBER
CREATE TABLE oct_jobs AS
    SELECT 
        *
    FROM 
        job_postings_fact
    WHERE
        EXTRACT (MONTH FROM job_posted_date) = 10
    LIMIT 10;

-- NOVEMBER
CREATE TABLE nov_jobs AS
    SELECT 
        *
    FROM 
        job_postings_fact
    WHERE
        EXTRACT (MONTH FROM job_posted_date) = 11
    LIMIT 10;

-- DECEMBER
CREATE TABLE dec_jobs AS
    SELECT 
        *
    FROM 
        job_postings_fact
    WHERE
        EXTRACT (MONTH FROM job_posted_date) = 12
    LIMIT 10;

    SELECT job_posted_date
    FROM mar_jobs;
*/

--2. CASE Query
/*
SELECT
    job_title_short,
    job_location,
    CASE
        WHEN job_location = 'Anywhere' THEN 'Remote'
        WHEN job_location = 'New York, NY' THEN 'Local'
        ELSE 'Onsite'
    END AS location_category
FROM
    job_postings_fact;
*/

-- 3. CASE Query
/*
SELECT
    COUNT(job_id) AS number_of_jobs,
    CASE
        WHEN job_location = 'Anywhere' THEN 'Remote'
        WHEN job_location = 'New York, NY' THEN 'Local'
        ELSE 'Onsite'
    END AS location_category
FROM
    job_postings_fact
WHERE
    job_title_short = 'Data Analyst'
GROUP BY 
    location_category;
*/