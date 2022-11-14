USE 'goverment';
COMMIT;

--게시판
CREATE TABLE test(NAME VARCHAR(50), pont INT);
INSERT INTO test VALUES("한태헌",100);
INSERT INTO test VALUES("김기태",80);
SELECT * FROM test;

CREATE TABLE notice(
no int primary key AUTO_INCREMENT,
title VARCHAR(200),
content VARCHAR(1000),
regdate DATETIME DEFAULT NOW(),
visited INT DEFAULT 0
); 
DROP TABLE NOTICE;

INSERT INTO notice(title, content) VALUES ("테스트 글1", "테스트 글1 내용입니다.");
INSERT INTO notice(title, content) VALUES ("테스트 글2", "테스트 글2 내용입니다.");

COMMIT;
DESC NOTICE;
SELECT * FROM notice;

--로그인 
create table user(
	usId varchar(13) primary key,	
	usPw varchar(200) not null,
	usName varchar(50) not null,
	address varchar(500) not null,
	tel varchar(14) not null,
	email VARCHAR(50) NOT NULL,
	birth DATETIME NOT NULL,
	regDate datetime default now(),
	point int default 0,
	level int default 0,
	visited int default 0
);

SELECT * FROM USER;

INSERT INTO USER VALUES('admin',1234,'관리자','경기도 고양시 일선수구','010-8888-3333','hth@naver.com','2000-07-17',DEFAULT,9999,9,100);
INSERT INTO USER VALUES('hth',1234,'한태헌','경기도 고양시 벛꽃수구','010-5555-3333','hth@gmail.com','2000-07-17',DEFAULT,0,0,0);

SELECT * FROM USER WHERE usId="admin" and usPw="1234";