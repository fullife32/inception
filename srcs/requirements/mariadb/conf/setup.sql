-- SET PASSWORD FOR 'root'@'localhost' = PASSWORD('{$MYSQL_ROOT_PASSWORD}');
CREATE USER '${MYSQL_USER}'@'localhost' IDENTIFIED BY '{$MYSQL_PASSWORD}';
GRANT ALL ON *.* TO '{$MYSQL_USER}'@'localhost' IDENTIFIED BY '{$MYSQL_PASSWORD}' WITH GRANT OPTION;
FLUSH PRIVILEGES;
exit