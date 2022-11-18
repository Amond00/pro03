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


DESC NOTICE;
SELECT * FROM notice;

--로그인 
create table user(
	usId varchar(13) primary key,	
	usPw varchar(200) not null,
	usName varchar(50) not null,
	address varchar(500) not null,
	tel varchar(14) not NULL,
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

--관광지 등록
CREATE TABLE pic(
	no INT PRIMARY KEY AUTO_INCREMENT,
	tourno VARCHAR(20),
	picname VARCHAR(150)
);
ALTER TABLE pic ADD COLUMN pos INT default 1; 
INSERT INTO pic (tourno, picname) VALUES('','');

CREATE TABLE tour(
	no INT PRIMARY KEY AUTO_INCREMENT,
	tourno VARCHAR(20),	-- 카테고리 타입 - 마지막 레코드의 no+1
	cate VARCHAR(20),
	place VARCHAR(100),
	comment1 VARCHAR(1000),
	comment2 VARCHAR(1000)  
);
ALTER TABLE tour ADD COLUMN addr VARCHAR(200);
update tour set addr="공릉천로64" WHERE tourno="A0001";

SELECT COMMENT2 FROM tour;
SELECT * FROM tour;
SELECT * FROM pic;
SELECT * FROM test;


create table qna(
    no int primary key auto_increment,
    title varchar(100) not null,
    content varchar(1000) not null,
    author varchar(20) not null,
    resdate datetime default NOW(),
    lev int DEFAULT 0,           	 -- 깊이
    parno int not NULL DEFAULT 0,    	 -- 부모글 번호   
    visited INT DEFAULT 0         
);
SELECT * FROM qna;
DROP TABLE qna;
select * from qna where NO=2 and lev=1;
select * from qna where lev=0 order by parno asc, lev asc,no asc;
INSERT INTO qna VALUES(DEFAULT, '질문','질문내용','admin',DEFAULT,0,1,DEFAULT);
INSERT INTO qna VALUES(DEFAULT, '질문2','질문내용2','admin',DEFAULT,0,2,DEFAULT);
select * from qna where NO=2 and lev=1;

INSERT INTO qna VALUES(DEFAULT, '답변','답변내용','admin',DEFAULT,1,1,DEFAULT);
