USE emsdb;
INSERT INTO users(username, password, enabled)
VALUES('admin','{noop}admin',true);

INSERT INTO users(username, password, enabled)
VALUES('user','{noop}user',true);

INSERT INTO authorities(username,authority)
VALUES('admin','ROLE_ADMIN');

INSERT INTO authorities(username,authority)	
VALUES('user','ROLE_USER');


DELETE FROM users WHERE username = 'admin';
DELETE FROM users WHERE username = 'user';
DELETE FROM users WHERE username = 'doolybom1';

DELETE FROM authorities WHERE seq=5 ;
DELETE FROM authorities WHERE seq=6;
select * from users;
select * from authorities;
commit;

DESC tbl_product;
SELECT * from tbl_dept;
SELECT * from tbl_product;

DESC tbl_dept;