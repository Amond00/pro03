<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.*, java.lang.*" %>
<%@ page import="java.text.*, java.net.InetAddress" %>
<c:set var="path1" value="${request.getContextPath() }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<jsp:include page="${path1 }/head.jsp" />
</head>
<body>
<jsp:include page="${path1 }/header.jsp" />
<nav class="breadcrumb" aria-label="breadcrumbs" style="border-bottom:2px solid #ddd; padding-bottom:8px; min-height:48px; line-height:48px;" >
</nav>
<section style="background-color:#d3d3d3; margin-top:100px; ">
	<div>
		<img src="../img/sub2.jpg" alt="비쥬얼2" style="margin-top:100px; margin-left:500px"/>
	</div>
	<div>
		<img src="../img/sub1.jpg" alt="비쥬얼1" style="margin-bottom:100px; margin-left:500px"/>
	</div>
</section>
<jsp:include page="${path1 }/footer.jsp" />
</body>
</html>				
