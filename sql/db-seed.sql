-- Use todo_db for this application
use todo_db;

-- Create TODO table
CREATE TABLE IF NOT EXISTS todos (
        id INT NOT NULL PRIMARY KEY,     
        task TEXT,
        completed BOOLEAN
    );

-- Insert sample todo into todos table
insert into todos values(1,"TODO-1", true);
insert into todos values(2,"TODO-2", false);
insert into todos values(3,"TODO-3", false);
insert into todos values(4,"TODO-4", true);
