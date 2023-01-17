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
    <title>장소 목록</title>
    <jsp:include page="/head.jsp" />
    <style>
    .page { clear:both; width: 100%; min-height:100vh;}
    .page:after { content:""; display:block; clear:both; }
    .page_wrap { width: 1200px; margin: 0 auto; }
    .page_title { padding-top: 1em; text-align: center; }
    .home { color:#333; }
    .frm { border:2px solid #333; padding: 24px; width: 780px; margin:50px auto; }
    
    .tb { display:table; margin:40px auto; width:580px; border-collapse:collapse; }
    .tb tr { display:table-row; }
    .tb td, .tb th { display:table-cell; }
    .tb th { height: 48px; border-bottom:2px solid #333; border-top:2px solid #333; 
    color:#fff; background-color:#333; }
    .tb td { height: 48px; border-bottom:1px solid #333; text-align:center; }
	.tb tr th:first-child { width:5px; text-align:center; }
	.tb tr th:nth-child(2) { width:5px; text-align:center; }
	.tb tr th:nth-child(3) { width:80px; text-align:center; }
	.tb tr th:last-child { text-align:center; width:150px; }
    </style>
    <link rel="stylesheet" type="text/css" href="datatables.min.css"/>
 	<script type="text/javascript" src="https://cdn.datatables.net/v/dt/dt-1.12.1/datatables.min.js"></script>
 	<script>
	    $(document).ready( function () {
	        $('.tb').DataTable();
	    } );
    </script>
  </head>
  <body>
  <jsp:include page="/header.jsp" />
	<nav class="breadcrumb" aria-label="breadcrumbs" style="border-bottom:2px solid #ddd; padding-bottom:8px; min-height:48px; line-height:48px;">
	  <ul style="float:right;">
	    <li><a href="${path1 }/">Home</a></li>
	    <li class="is-active"><a href="#" aria-current="page">전체 관광지 목록</a></li>
	  </ul>
	</nav>
	<div class="content">
  <section class="page">
    <div class="page_wrap">
      <h1 class="title">관광지 목록</h1>
      <div class="tb_fr" >
			<table class="tb" >
			  <thead>
			    <tr>
			      <th style="color:white;">번호</th>
			      <th style="color:white;">카테고리</th>
			      <th style="color:white;">장소</th>
			    </tr>
			  </thead>
			   <tbody>
			   <c:forEach items="${list }" var="dto" varStatus="status">
			    <tr>
			      <td>${status.count }</td>
			      <td>
					<c:set var="cate" value="${dto.cate }" /> 
					<c:if test="${cate eq 'A' }">
					<span>관광지</span>
					</c:if>
					<c:if test="${cate eq 'B' }">
					<span>자연</span>
					</c:if>
					<c:if test="${cate eq 'C' }">
					<span>레포츠</span>
					</c:if>
					<c:if test="${cate eq 'D' }">
					<span>쇼핑</span>
					</c:if>
					<c:if test="${cate eq 'E' }">
					<span>음식</span>
					</c:if>
					<c:if test="${cate eq 'F' }">
					<span>숙박</span>
					</c:if>
					<c:if test="${cate eq 'G' }">
					<span>축제</span>
					</c:if>
					<c:if test="${cate eq 'H' }">
					<span>기타</span>
					</c:if>
			      </td>
			      <td>
			      	<a href="${path1 }/GetTourDetailCtrl.do?no=${dto.no }">${dto.place }</a>
				  </td>
			    </tr>
			    </c:forEach>
				<c:if test="${empty list }">
			    <tr>
			    	<td colspan="3">해당 데이터 목록이 없습니다.</td>
			    </tr>
			    </c:if>
			  </tbody>
			</table>
		</div>
		<c:if test='${usid.equals("admin") }'>
		<div class="buttons">
		  <a href="${path1 }/tour/addTour.jsp" class="button is-success">장소 등록</a>
		</div>
		</c:if>
    </div>
  </section>
  </div>
  <jsp:include page="/footer.jsp"></jsp:include>
  </body>
</html>