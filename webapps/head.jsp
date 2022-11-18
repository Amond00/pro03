<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- bulma css, script -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.4/css/bulma.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma-carousel@4.0.4/dist/css/bulma-carousel.min.css" />
<script src="https://cdn.jsdelivr.net/npm/bulma-carousel@4.0.3/dist/js/bulma-carousel.min.js"></script>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/common.css" >
<!-- 파비콘 -->
<link rel="icon" href="https://www.ito.or.kr/main/img/contents/ci.gif">
<!-- jquery -->
<script src="https://code.jquery.com/jquery-latest.js"></script>
<link rel="stylesheet" href="./css/reset2.css">
<link rel="stylesheet" type="text/css" href="./css/datatables.min.css"/>
<script type="text/javascript" src="https://cdn.datatables.net/v/dt/dt-1.12.1/datatables.min.js"></script>
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&family=Noto+Sans+KR&display=swap" rel="stylesheet">

<style>
.footer_ban {
    margin-top: 50px;
    border-radius: 20px;
    background: #fff;
}
.footer_ban>ul {
    display: flex;
    flex-direction: row;
    align-items: center;
    justify-content: space-around;
    dpadding: 36px 0;
}
.footer_ban>ul>li {
    font-size: 1.6rem;
    width: 13.5%;
}
.footer_ban>ul>li>a {
    display: flex;
    flex-direction: column;
    align-items: center;
}
.footer_ban>ul>li img {
    margin-bottom: 10px;
    max-width: 120px;
    max-height: 36px;
}
.footer_ban>ul>li span {
    width: 100%;
    text-align: center;
    font-size: 1.0rem;
}

.footer_bcon {
    position: relative;
    margin-top: 60px;
    padding-left: 230px;
}
.footer_etcLink {
    position: absolute;
    left: 10px;
    top: 0;
    width: 380px;
    max-width: 50%;
    overflow: hidden;
}
ul, li, dl, dd {
    list-style-type: none;
}
.footer_etcLink li {
    margin-bottom: 8px;
}
.footer_bcon a {
    color: #fff;
}
.wrap {
    position: relative;
    max-width: 1280px;
    margin: 0 auto;
}

.sel_box { float:right; border-bottom:1px solid #fff;height: 44px; line-height: 44px; text-align:center; width: 140px; }
#sel { border:none; outline: none; background-color: transparent; color:#fff; }
#sel option { color:#333; }

</style>