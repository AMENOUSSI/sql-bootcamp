UPDATE account
SET last_login = CURRENT_TIMESTAMP;

UPDATE account_job
SET hire_date = account.created_on
WHERE account_job.user_id = account.user_id;
SELECT * FROM account;

SELECT * FROM account_job;