USE emsdb;
INSERT INTO users(username, password, enabled)
VALUES('admin','{noop}admin',true);

INSERT INTO users(username, password, enabled)
VALUES('user','{noop}user',true);

INSERT INTO authorities(username,authority)
VALUES('admin','ROLE_ADMIN');

INSERT INTO authorities(username,authority)
VALUES('user','ROLE_USER');


DELETE FROM authorities WHERE seq=1 ;
DELETE FROM authorities WHERE seq=2 ;
select * from users;
select * from authorities;
commit;