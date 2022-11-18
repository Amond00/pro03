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
    <title>회원 목록</title>
    <jsp:include page="/head.jsp" />
  </head>
  <body>
  <jsp:include page="/header.jsp" />
	    <div class="columns is-full">
			<jsp:include page="../../admin/sidebar.jsp" />
			<div class="column is-10">
		      <h1 class="title">회원 목록</h1>
				<table class="table">
				  <thead>
				    <tr>
				      <th>No</th>
				      <th>Id</th>
				      <th>Name</th>
				      <th>RegDate</th>
				    </tr>
				  </thead>
				   <tbody>
				   <c:forEach items="${list }" var="dto" varStatus="status">
				    <tr>
				      <td>${status.count }</td>
				      <td><a href="${path1 }/GetUserDetailCtrl.do?id=${dto.usid }">${dto.usid }</a></td>
				      <td><a href="${path1 }/GetUserDetailCtrl.do?id=${dto.usname }">${dto.usname }</a></td>
				      <td>
				      	<fmt:parseDate value="${dto.regDate }" var="reg" pattern="yyyy-MM-dd HH:mm:ss" />
				      	<fmt:formatDate value="${reg }" pattern="yyyy-MM-dd" />
				    </tr>
				    </c:forEach>
					<c:if test="${empty list }">
				    <tr>
				    	<td colspan="4">해당 회원 목록이 없습니다.</td>
				    </tr>
				    </c:if>
				  </tbody>
				</table>
			</div>
		</div>
  <jsp:include page="/footer.jsp"/>
  </body>
</html>