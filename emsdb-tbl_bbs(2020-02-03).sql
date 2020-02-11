-- root 계정 비밀번호 분실했을때
-- 기존에 등록된 다른 id로 로그인하여 수행
-- 단, 다른 id의 grant all로 지정되어 있어야 한다

ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'aa1234';

-- UTF-8

use emsdb;
DROP TABLE tbl_bbs;

CREATE TABLE tbl_bbs(
	BBS_ID	BIGINT	AUTO_INCREMENT	PRIMARY KEY,
	BBS_P_ID	BIGINT	DEFAULT 0,	
	BBS_WRITER	VARCHAR(50)	NOT NULL,	
	BBS_DATE	VARCHAR(10)	,	
	BBS_TIME	VARCHAR(10)	,	
	BBS_SUBJECT	VARCHAR(125),		
	BBS_CONTENT	VARCHAR(1000),		
	BBS_COUNT	INT	DEFAULT 0	
)CHAR SET utf8mb4;

-- mysql에서 현재 database schema가 어떤 encoding인지 확인
SHOW SESSION VARIABLES LIKE 'collation_connection';

CREATE TABLE tbl_menu(
	MENU_ID	VARCHAR(3)	NOT NULL	PRIMARY KEY,
	MENU_P_ID	VARCHAR(3)		,
	MENU_TITLE	VARCHAR(10)	NOT NULL	,
	MENU_HREF	VARCHAR(125)		
);
use tbl_menu;
INSERT INTO `emsdb`.`tbl_menu`
VALUES('M01','','HOME','/');
INSERT INTO `emsdb`.`tbl_menu`
VALUES('M02','','관리자','#');
INSERT INTO `emsdb`.`tbl_menu`
VALUES('M03','M02','로그인','#');
INSERT INTO `emsdb`.`tbl_menu`
VALUES('M04','M02','회원가입','#');
INSERT INTO `emsdb`.`tbl_menu`
VALUES('M05','M02','게시판정리','#');

UPDATE tbl_menu SET menu_p_id = NULL WHERE menu_id IN ('M01','M02');

USE EMSDB;

CREATE TABLE tbl_comment(
	CMT_ID	BIGINT	NOT NULL	PRIMARY KEY AUTO_INCREMENT,
	CMT_P_ID	BIGINT	DEFAULT 0,
	CMT_WRITER	VARCHAR(20)	NOT NULL,	
	CMT_DATE DATETIME DEFAULT CURRENT_TIMESTAMP,
	CMT_TEXT	VARCHAR(400)		
);

drop table tbl_comment;
select * from tbl_comment;

