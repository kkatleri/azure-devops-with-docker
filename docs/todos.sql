-- Create todo_db datbase
 create database todo_db;
 
-- Use todo_db for this application
use todo_db;

-- Create TODO table
CREATE TABLE IF NOT EXISTS todos (
        id INT NOT NULL PRIMARY KEY,     
        task TEXT,
        completed BOOLEAN
    );

-- Insert sample todo into todos table
insert into todos values(1,"TODO-1", false);

-- Get all todos 
select * from todos;

-- Delete todos table    
drop table todos;
drop table todos_seq;

-- Delete database
drop database todo_db;
