USE 'goverment';


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