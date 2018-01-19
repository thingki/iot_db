SET SESSION FOREIGN_KEY_CHECKS=0;

/* Drop Tables */

DROP TABLE IF EXISTS user_info;
DROP TABLE IF EXISTS class_info;




/* Create Tables */

-- 반정보테이블
CREATE TABLE class_info
(
	cino int unsigned NOT NULL AUTO_INCREMENT COMMENT '반번호',
	ciname varchar(100) NOT NULL COMMENT '반이름',
	cidesc varchar(500) COMMENT '반설명',
	PRIMARY KEY (cino),
	UNIQUE (ciname)
) COMMENT = '반정보테이블';


-- 유저정보테이블
CREATE TABLE user_info
(
	uino int unsigned NOT NULL AUTO_INCREMENT COMMENT '유저번호',
	uiname varchar(100) NOT NULL COMMENT '유저이름',
	uiage tinyint unsigned NOT NULL COMMENT '유저나이',
	uiid varchar(100) NOT NULL COMMENT '유저아이디',
	uipwd varchar(100) NOT NULL COMMENT '유저비밀번호',
	cino int unsigned NOT NULL COMMENT '반번호',
	PRIMARY KEY (uino),
	UNIQUE (uiid)
) COMMENT = '유저정보테이블';



/* Create Foreign Keys */

ALTER TABLE user_info
	ADD CONSTRAINT pk_class_info_no FOREIGN KEY (cino)
	REFERENCES class_info (cino)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;



