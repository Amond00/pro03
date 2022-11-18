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
<figure class="image is-16by9 is-covered">
	<img src="${path1 }/img/sub1.jpg" alt="비쥬얼1" />
</figure>
<jsp:include page="${path1 }/footer.jsp" />
</body>
</html>				
