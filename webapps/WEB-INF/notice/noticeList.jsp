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
    <title>공지사항</title>
  <jsp:include page="/head.jsp" />
  <script>
	    $(document).ready( function () {
	        $('.table').DataTable();
	    } );
    </script>
  </head>
  <body>
  <jsp:include page="/header.jsp" />
  <nav class="breadcrumb" aria-label="breadcrumbs" style="border-bottom:2px solid #ddd; padding-bottom:8px; min-height:48px; line-height:48px;">
  </nav>
  <section class="section">
    <div class="container">
      <h1 class="title" style="text-align:center; ">공지사항</h1>
		<table class="table" >
		  <thead>
		    <tr>
		      <th style="background-color:#333; color:white;">No</th>
		      <th style="background-color:#333; color:white;">Title</th>
		      <th style="background-color:#333; color:white;">RegDate</th>
		    </tr>
		  </thead>
		   <tbody>
		   <c:forEach items="${list }" var="dto" varStatus="status">
		    <tr>
		      <td>${status.count }</td>
		      <td><a href="${path1 }/GetNoticeCtrl.do?no=${dto.no }">${dto.title }</a></td>
		      <td>
		      	<fmt:parseDate value="${dto.regDate }" var="regdate" pattern="yyyy-MM-dd HH:mm:ss" />
		      	<fmt:formatDate value="${regdate }" pattern="yyyy-MM-dd" />
		    </tr>
		    </c:forEach>
		  </tbody>
		</table>
		<c:if test='${usId.equals("admin")}'>	
			<div class="buttons">
			  <a href="${path1 }/notice/addNotice.jsp" class="button is-success">글 등록</a>
			</div>
		</c:if>
	</div>
  </section>
  <jsp:include page="/footer.jsp" />
  </body>
</html>