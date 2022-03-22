-- SET PASSWORD FOR 'root'@'localhost' = PASSWORD('{$MYSQL_ROOT_PASSWORD}');
DROP USER 'eassouli'@'localhost';
CREATE USER 'eassouli'@'localhost' IDENTIFIED BY 'hrC/ECGawMmb64A1Ce5vByjIHLSgXi3UvDN0KZkyHc4=';
GRANT ALL ON *.* TO 'eassouli'@'localhost' IDENTIFIED BY 'hrC/ECGawMmb64A1Ce5vByjIHLSgXi3UvDN0KZkyHc4=' WITH GRANT OPTION;
FLUSH PRIVILEGES;
exit