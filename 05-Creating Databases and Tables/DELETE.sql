SELECT * FROM job;


DELETE FROM job
WHERE job_name ILIKE 'president'
RETURNING job_id,job_name;