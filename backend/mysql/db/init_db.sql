

-- -- create user called `manager` with password `Password`
CREATE USER 'wiki-sport-main'@'%' IDENTIFIED BY 'wikisport';

-- give access to manager on db
GRANT ALL PRIVILEGES ON *.* TO 'wiki-sport-main'@'%';

-- set password method to native password for mysql workbench access (mysql 8 issue)
ALTER USER 'wiki-sport-main'@'%' IDENTIFIED WITH MYSQL_NATIVE_PASSWORD BY 'wikisport';

FLUSH PRIVILEGES;

ALTER USER 'wiki-sport-main'@'%' IDENTIFIED WITH MYSQL_NATIVE_PASSWORD BY 'wikisport';
