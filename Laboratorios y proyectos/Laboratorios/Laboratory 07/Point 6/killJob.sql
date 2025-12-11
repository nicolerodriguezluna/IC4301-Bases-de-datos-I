BEGIN
  dbms_scheduler.drop_job(job_name => 'A01');
END;

--In class we tried using the dbms.scheduler.stop_job but id did not work
-- so the proffessor told us to use drop_job instead.
