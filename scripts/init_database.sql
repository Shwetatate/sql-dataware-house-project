/* 
We set up the data warehouse structure in Databricks using the Hive Metastore (since Unity Catalog was not enabled). 
Instead of using a system database like master in SQL Server, we directly created databases to represent the Medallion Architecture layers. 
Separate databases—bronze, silver, and gold—were created to store raw, cleaned, and curated data respectively. 
This proach aligns with Databricks best practices while preserving the logical intent of a traditional SQL Server–based data warehouse design. 
*/

USE MASTER;
SHOW DATABASES;


CREATE SCHEMA bronze;
CREATE SCHEMA silver;
CREATE SCHEMA gold;




