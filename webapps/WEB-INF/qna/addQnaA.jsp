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
      <h1 class="title">QnA <span style="color:red;">관리자</span>-답변하기</h1>
		<table class="table">
		   <tbody>
		    <tr>
		      <th>번호</th>
		      <td>${dto.no }</td>
		    </tr>
		    <tr>
		      <th>질문 제목</th>
		      <td>${dto.title }</td>
		    </tr>
		    <tr>
		      <th>질문 내용</th>
		      <td><p>${dto.content }</p></td>
		    </tr>
		    <tr>
		      <th>작성자</th>
		      <td><p>${dto.author }</p></td>
		    </tr>
		  </tbody>
		</table>
		<strong style="color:red; font-size:30px;">------------------------------답변 작성------------------------------</strong>
		<form action="${path1 }/AddQnaAProCtrl.do" method="post">
			<table class="table">
			   <tbody>
			   		<tr>
				      <td><input type="hidden" name="no" id="no" value="${dto.no }" required /></td>
				    </tr>
				   <tr>
				      <td><input type="hidden" name="parno" id="parno" value="${dto.parno }" required /></td>
				    </tr>
				    <tr>
				      <th><label for="title">답변 제목</label></th>
				      <td><input type="text" class="input" maxlength="120" name="title" id="title" placeholder="제목 입력" required /></td>
				    </tr>
				    <tr>
				      <th><label for="content">작성자</label></th>
				      <td><input type="text" class="text" value="admin" readonly/></td>
				    </tr>
				    <tr>
				      <th><label for="content">답변 내용</label></th>
				      <td><textarea rows="8" cols="100" name="content" id="content" class="textarea" required></textarea></td>
				    </tr>
			  </tbody>
			</table>
			<div class="buttons">
			  <button type="submit" class="button is-info">답변 등록</button>
			  <a href="${path1 }/GetQnaListCtrl.do" class="button is-success">목록</a>
			</div>
		</form>
    </div>
  </section>
  <jsp:include page="/footer.jsp"></jsp:include>
  </body>
</html>