
create database books;
create user books;
create user 'books'@'localhost' IDENTIFIED BY 'books';

use books;

show tables;

create table tbl_user(
	userId VARCHAR(20) PRIMARY KEY,
    password VARCHAR(125),
    userName VARCHAR(30),
	userRoll VARCHAR(10)
);

select * from tbl_user;
DELETE FROM tbl_user WHERE userId = 'korea';
commit;
