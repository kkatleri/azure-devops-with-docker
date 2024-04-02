-- Steps to add/update/delete a user to MYSQL database & grant permissions

USE mysql;

-- Add a new user
CREATE USER 'username'@'%' IDENTIFIED BY 'mysql';
GRANT ALL PRIVILEGES ON dbname.* TO 'username'@'%';
FLUSH PRIVILEGES;
-- Restart mysql service
sudo service mysql restart

---------------------------------------------------------------------------------

-- Update mysql user password
ALTER USER 'username'@'localhost' IDENTIFIED BY 'newPassword';
-- Restart mysql service
sudo service mysql restart;

---------------------------------------------------------------------------------
-- Delete a user
drop user 'ubuntu'@'localhost';
-- Restart mysql service
sudo service mysql restart;