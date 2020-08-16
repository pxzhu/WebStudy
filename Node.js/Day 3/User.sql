CREATE USER 'nodejs'@'%' IDENTIFIED BY 'nodepw';

SELECT User,Host FROM mysql.user;

GRANT ALL PRIVILEGES ON opentutorials.* TO 'nodejs'@'%';

FLUSH PRIVILEGES;