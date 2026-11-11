SELECT * FROM job;
INSERT INTO account(username,password,email,created_on)
VALUES
('Jules','password','jules@mail.com',CURRENT_TIMESTAMP);
INSERT INTO account_job(user_id,job_id,hire_date)
VALUES
(3,3,CURRENT_TIMESTAMP);
