# 인천 관광 공사

## 1. 프로젝트 개요
준 정부 기관 "인천관광공사" 를 모티브로 하여 가상의 기업의 홈페이지를 주제로 정한 후 사전에 먼저 페이퍼 프로토 타입, 스토리보드 등 을 이용해 프론트 엔드 부분의 전체적인 틀을 구상한 뒤 Bumlma Framework를 이용해 HTML문서를 작성하였습니다. 이것을 바탕으로 Eclipse, MariaDB를 이용해 MVC_LEV2 패턴을 구현하였으며 Controller, dto, model, view 로 나누어 로그인, 회원가입, 아이디 중복확인, 회원관리, 공지사항 게시판(목록 및 상세보기, 글 등록, 글 수정, 글 삭제), QnA게시판(목록 및 상세보기, 질문글 등록, 답변 글 등록, 글 삭제), 관광지 전체 목록, 카테고리별 관광지 목록 및 카테고리별 전체 목록, 관광지 상세보기, 관광지 사진 및 내용 업로드 등의 기능을 구현하였습니다.

## 2. 개발환경
* IDE : Eclipse
* GIT : Git Bash

## 3. FRONTEND
* JSTL, EL, Bulma CSS framework, JQuery, Ajax
* FRONTEND 화면 URL : https://amond00.github.io/web03/

## 4. BACKEND
* JAVA-VERSION : JAVA8
* SERVER : TOMCAT8
* DB : MariaDB
* DB-Connection: JDBC
* CRYPT STYLE : SHA256

## 5. 프로젝트 PPT
### 설계
![구조](./img/mvc2p.PNG "구조 소개")
![메뉴](./img/slide/slide1.PNG "메뉴 구조도")  
![ERD](./img/database.PNG "데이터 베이스 ERD")  
![UI](./img/slide/slide2.PNG "UI 프로세스")
### 구현 화면
![MAIN](./img/imp/main1.PNG "메인 페이지1")
![MAIN](./img/imp/main2.PNG "메인 페이지2")
![MAIN](./img/imp/main3.PNG "메인 페이지3")
![USER](./img/imp/join1.PNG "회원가입 약관")
![USER](./img/imp/join1_2.PNG "회원가입 약관")
![USER](./img/imp/join2.PNG "회원가입")
![USER](./img/imp/login.PNG "로그인")
![USER](./img/imp/memberList.PNG "회원관리")
![TOUR](./img/imp/tourList.PNG "관광지 목록")
![TOUR](./img/imp/tourDetail.PNG "관광지 상세보기")
![TOUR](./img/imp/tourDetail2.PNG "관광지 상세보기2")
![TOUR](./img/imp/tourAllList.PNG "관광지 전체 목록")
![TOUR](./img/imp/tourInsert.PNG "관광지 등록")
![notice](./img/imp/noticeList.PNG "공지사항 목록")
![notice](./img/imp/noticeDetail.PNG "공지사항 상세보기")
![notice](./img/imp/noticeInsert.PNG "공지사항 등록")
![notice](./img/imp/noticeList.PNG "공지사항 상세보기")
![QnA](./img/imp/qnaList.PNG "QnA 목록")
![QnA](./img/imp/qnaDetail.PNG "QnA 상세보기")
![QnA](./img/imp/qnaInsertQ.PNG "QnA 질문 글 등록")
![QnA](./img/imp/qnaInsertA.PNG "QnA 답변 글 등록")
### 스토리보드
#### 프로토타입 시연 동영상
    https://user-images.githubusercontent.com/112074203/212822595-2a18c408-f17a-4ae1-b6c7-cc225e180634.mp4

![PAPER PROTOTYPE](./img/slide/slide3.PNG )
![PAPER PROTOTYPE](./img/slide/slide4.PNG )
![PAPER PROTOTYPE](./img/slide/slide5.PNG )
![PAPER PROTOTYPE](./img/slide/slide6.PNG )
![PAPER PROTOTYPE](./img/slide/slide7.PNG )
![PAPER PROTOTYPE](./img/slide/slide8.PNG )
![PAPER PROTOTYPE](./img/slide/slide9.PNG )
![PAPER PROTOTYPE](./img/slide/slide10.PNG )
![PAPER PROTOTYPE](./img/slide/slide11.PNG )
![PAPER PROTOTYPE](./img/slide/slide12.PNG )
![PAPER PROTOTYPE](./img/slide/slide13.PNG )


