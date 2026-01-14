-- 1. Get jobs and companies from January
SELECT 
	job_title_short,
	company_id,
	job_location
FROM
	january_jobs

UNION ALL

-- 2. Get jobs and companies from February 
SELECT 
	job_title_short,
	company_id,
	job_location
FROM
	february_jobs

UNION ALL 

-- 3. Get jobs and companies from March
SELECT 
	job_title_short,
	company_id,
	job_location
FROM
	march_jobs