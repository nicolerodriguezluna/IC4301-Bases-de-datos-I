BEGIN
DBMS_SCHEDULER.create_job(
    job_name => 'A01',
    job_type => 'PLSQL_BLOCK',
    job_action => 'BEGIN utils.insert_Person(||'''||Ana||'''||'''||Morales||''');END;',
    start_date => SYSTIMESTAMP,
    repeat_interval => 'freq=secondly',
    end_date => NULL,
    enabled =>True,
    comments => 'Mi Primer Job'
);
END;
--a. What does “A01” mean? 5pts
-- It is the name of the job.
--b. Can “A01” be changed? 5pts
-- It can be changed if you copy the job to a new one and eliminate the previous one.
--c. What implication would the change of point b. in the code of procedure to execute in the job? 5pts
-- The code in point b would not work due to the change of name of the job.
--d. What does freq=secondly mean? 5pts
-- It sets the frequency of the job execution to an interval of every second.
--e. How do you pass parameters to a procedure that is executed from a job? 10pts
-- You cand send them concatenating them with a triple '. Or you can declare
-- a variable and send it.
--f. What is the implication that end_date is NULL? 3pts
-- It implies that the job will execute for an indefinite amount of time
--g. What does SYSTIMESTAMP mean? 2pts
-- It is a data type that represents the system date and hour in a determined moment.


