CREATE USER ge
IDENTIFIED BY ge 
DEFAULT TABLESPACE ge_data
QUOTA 10M ON ge_data 
TEMPORARY TABLESPACE temp
QUOTA 5M ON system;
--Can you create various schemas in the same database?
--Yes.
--Which is the porpouse of creating more than one schema in the same database?
--For data integrity,modularization, organization and administration of the users that have access to different schemas.