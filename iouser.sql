
-- mysql에서는 사용자 등록할때 접속경로를 설정 
-- iouser는 localhost에서만 접속할 수 있다
create user 'iouser'@'localhost' identified by '1234';
grant all privileges on *.* TO 'iouser'@'localhost';

-- iouser는 모든 곳에서 원격, 로컬로 접속할 수 있다
create user 'iouser'@'localhost' identified by '1234';
grant all privileges on *.* TO 'iouser'@'%';

-- IP 대역이 192.168.*.*에서만 접속허가
CREATE USER 'iouser'@'192.168.%' IDENTIFIED BY '1234';
GRANT ALL PRIVILEGES ON *.* TO 'iouser'@'192.168.%';


-- 2020-01-21
-- 새로운 사용자 등록하고 권한 부여
create user 'ems'@'localhost' identified by 'ems';
grant all privileges on *.* TO 'ems'@'localhost';


-- ems는 모든 곳에서 원격, 로컬로 접속할 수 있다
create user 'ems'@'%' identified by 'ems';
grant all privileges on *.* TO 'ems'@'%';

CREATE DATABASE emsDB;

show DATABASES;

use emsdb;
show tables;

GRANT ALL PRIVILEGES ON *.* TO 'books'@'localhost';
flush PRIVILEGES;
DESCRIBE tbl_ems;