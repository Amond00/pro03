<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.*, java.lang.*" %>
<%@ page import="java.text.*, java.net.InetAddress" %>
<c:set var="path1" value="<%=request.getContextPath() %>" />
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>공지사항 상세보기</title>
    <jsp:include page="/head.jsp" />
    <style>
    /* header.css */
    .hd { position:fixed; }
    /* content */
    .vs { clear:both; width: 100%; height:300px; overflow: hidden; }
    .vs img { display:block; width: 100%; height:auto; }
    .bread { clear:both; width: 100%; line-height: 60px; border-bottom:3px solid #eee; }
    .bread_fr { width: 1200px; margin: 0 auto; }
    .page { clear:both; width: 100%; min-height:100vh;}
    .page:after { content:""; display:block; clear:both; }
    .page_wrap { width: 1200px; margin: 0 auto; }
    .page_title { padding-top: 1em; text-align: center; }
    .home { color:#333; }
    .frm { border:2px solid #333; padding: 24px; width: 780px; margin:50px auto; }
    .tb { display:table; margin:40px auto; width:580px; border-collapse:collapse; }
    .tb tr { display:table-row; }
    .tb td, .tb th { display:table-cell; }
    .tb th { height: 48px; border-bottom:1px solid #fff; color:#fff; background-color:#333; 
    width:120px; }
    .tb td { height: 48px; border-bottom:1px solid #333; text-align:left;
    padding-left:80px; border-right:2px solid #333; }
    .tb tr:first-child th { border-top:2px solid #333; }
    .tb tr:first-child td { border-top:2px solid #333; }
    .tb tr:last-child th { border-bottom:2px solid #333; }
    .tb tr:last-child td { border-bottom:2px solid #333; }
	.btn_group { clear:both; width:580px; margin:20px auto; }
	.btn_group .btn { display:block; float:left; margin:20px; min-width:100px; padding:8px; font-size:14px;
	line-height:24px; border-radius:36px; border:2px solid #333; text-align:center; }
	.btn_group .btn.primary { background-color:#333; color:#fff; margin-left:-5px; display:block; margin-right:72.7px; }
	.btn_group .btn.primary:hover { background-color:deepskyblue; color:red; }
    </style>
  </head>
  <body>
  <jsp:include page="/header.jsp" />
  <section class="section">
    <div class="container">
      <h1 class="title">QnA 질문 및 답변 상세 내용</h1>
		<table class="table">
		   <tbody>
		    <tr>
		      <th>질문 제목</th>
		      <td><p>${dto.title }</p></td>
		    </tr>
		    <tr>
		      <th>질문 내용</th>
		      <td><p>${dto.content }</p></td>
		    </tr>
		    <tr>
		      <th>답변 제목</th>
		      <td><p>${dto.title2 }</p></td>
		    </tr>
		    <tr>
		      <th>답변 내용</th>
		      <c:if test='${not empty dto.content2 }'>
		      	<td><p>${dto.content2 }</p></td>
		      </c:if>
		      <c:if test='${empty dto.content2 }'>
		      	<td><p style="color:red; font-weight:bolder;">아직 상담사가 답변을 작성하지 않았습니다.</p></td>
		      </c:if>
		    </tr>
		    <tr>
		      <th>작성자</th>
		      <td><p>${dto.author }</p></td>
		    </tr>
		    <tr> 
		      <th>작성일</th>
		      <td>
		      	<fmt:parseDate value="${dto.resdate }" var="resdate" pattern="yyyy-MM-dd HH:mm:ss" />
		      	<fmt:formatDate value="${resdate }" pattern="yyyy-MM-dd" />
		    </tr>
		    <tr>
		      <th>조회수</th>
		      <td><p>${dto.visited }</p></td>
		    </tr>
		    <tr>
		      <th>parno</th>
		      <td><p>${dto.parno }</p></td>
		    </tr>
		  </tbody>
		</table>
		<a href="${path1 }/GetQnaListCtrl.do" class="button is-success">목록</a>
		 <c:if test='${usId.equals("admin")}'>
		 	<a href="${path1 }/AddQnaACtrl.do?no=${dto.no }" class="button is-danger">질문 답변</a>
			<a href="${path1 }/UpdateQnaCtrl.do?no=${dto.no }" class="button is-info">관리자 질문 수정</a>
			<a href="${path1 }/UpdateQnaCtrl.do?parno=${dto.parno }" class="button is-info">답변 수정</a>
			<a href="${path1 }/DelQnaCtrl.do?parno=${dto.parno }" class="button is-danger">관리자 질문 삭제</a>
		 </c:if>	
		 <c:if test='${usId.equals("${dto.author }")}'>
		 	<a href="${path1 }/UpdateQnaCtrl.do?no=${dto.no }" class="button is-info">질문 수정</a>
		 	<a href="${path1 }/DelQnaCtrl.do?parno=${dto.parno }&no=${dto.no}" class="button is-danger">질문 삭제</a>
		 </c:if>
    </div>
  </section>
  <jsp:include page="/footer.jsp"></jsp:include>
  </body>
</html>