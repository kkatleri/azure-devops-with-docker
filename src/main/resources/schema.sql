/*
Spring boot by default looks for entity classes and creates database tables during startup.
Problem with this approach is the table is created with alphabetically ordered columns rather than ordering defined
in the entity class. Requires other hacks to prevent this.

Alternatively schema.sql can be used to create the db tables as below.
*/

-- DROP TABLE IF EXISTS todos; -- If you want to create fresh table on every server startup
CREATE TABLE IF NOT EXISTS todos(id INT NOT NULL PRIMARY KEY, task TEXT, completed BOOLEAN); -- If you want to create table just once
