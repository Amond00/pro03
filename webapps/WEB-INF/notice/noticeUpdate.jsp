<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.*, java.lang.*" %>
<%@ page import="java.text.*, java.net.InetAddress" %>
<c:set var="path1" value="<%=request.getContextPath() %>" />
<%-- <c:set var="path1" value="${pageContext.request.contextPath }" />   --%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>공지사항 상세보기</title>
    <jsp:include page="/head.jsp" />
  </head>
  <body>
  <jsp:include page="/header.jsp" />
  <section class="section">
    <div class="container">
      <h1 class="title">공지사항 수정</h1>
      <form action="UpdateNoticeProCtrl.do" method="post">
		<table class="table">
		   <tbody>
		    <tr>
		      <th>번호</th>
		      <td><input id="no" name="no" value="${dto.no }" readonly ></td>
		    </tr>
		    <tr>
		      <th>제목</th>
		      <td><input type="text" name="title" maxlength="120" id="title" class="textarea" value="${dto.title }" autofocus required /></td>
		    </tr>
		    <tr>
		      <th>내용</th>
		      <td><textarea rows="8" cols="100" type="text" name="content" id="content" class="textarea" value="" autofocus required >${dto.content }</textarea></td>
		    </tr>
		    <tr> 
		      <th>작성일</th>
		      <td>
		      	<fmt:parseDate value="${dto.regDate }" var="regdate" pattern="yyyy-MM-dd HH:mm:ss" />
		      	<fmt:formatDate value="${regdate }" pattern="yyyy-MM-dd" />
		    </tr>
		    <tr>
		      <th>읽은 횟수</th>
		      <td><p>${dto.visited }</p></td>
		    </tr>
		  </tbody>
		</table>
		<div class="buttons">
		  <button type="submit" class="button is-warning">글 수정</button>
		  <a href="${path1 }/GetNoticeListCtrl.do" class="button is-info">목록</a>
		</div>
	 </form>
    </div>
  </section>
  <jsp:include page="/footer.jsp"></jsp:include>
  </body>
</html>