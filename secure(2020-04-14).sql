-- secure DB schema 생성
CREATE DATABASE secur;

-- 사용자 등록
CREATE USER 'secur'@'localhost' IDENTIFIED BY 'secur';

-- 권한부여
GRANT ALL PRIVILEGES ON *.* TO 'secur'@'localhost';



SELECT username, password, enabled FROM users 
WHERE username=?;

use secur;
-- user table 생성
CREATE TABLE users(
	id bigint PRIMARY KEY AUTO_INCREMENT,
	username VARCHAR(50),
    password VARCHAR(125),
    enabled boolean
);
SELECT * from tbl_users;
-- 
CREATE TABLE tbl_users(
	id bigint PRIMARY KEY AUTO_INCREMENT,
	user_name VARCHAR(50),
    user_pass VARCHAR(125),
    enabled boolean
);


CREATE TABLE authorities(
	id bigint PRIMARY KEY AUTO_INCREMENT,
	username VARCHAR(50),
	authority VARCHAR(50)
);

use secur;
DELETE FROM tbl_users WHERE user_name='do1';
drop table tbl_users;
drop table authorities;

INSERT INTO tbl_users ( user_name, user_pass, email, enabled)
VALUES('admin', 'admin','doolybom1@nate.com', true);


select * from tbl_users;	
select * from authorities;

INSERT INTO authorities(username,authority)
VALUE('admin','ADMIN');
INSERT INTO authorities(username,authority)
VALUE('admin','ROLE_ADMIN');


INSERT INTO tbl_users ( user_name, user_pass, email, enabled)
VALUES('user', 'user','user@nate.com', true);

INSERT INTO authorities(username,authority)
VALUE('user','USER');
INSERT INTO authorities(username,authority)
VALUE('user','ROLE_USER');


delete from authorities WHERE username ='admin';
commit;