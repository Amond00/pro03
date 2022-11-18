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
	.tb tr th:first-child { width:80px; text-align:center; }
	.tb tr th:nth-child(2) { width:600px; text-align:center; }
	.tb tr th:nth-child(3) { width:160px; text-align:center; }
	.tb tr th:last-child { text-align:center; width:150px; }
    </style>
 	<script>
	    $(document).ready( function () {
	        $('.tb').DataTable();
	    } );
    </script>
  </head>
  <body>
  <jsp:include page="/header.jsp" />
  <nav class="breadcrumb" aria-label="breadcrumbs" style="border-bottom:2px solid #ddd; padding-bottom:8px; min-height:48px; line-height:48px;">
  </nav>
<div class="wrap">
  <div class="content">
        <section class="page">
            <div class="page_wrap">
                <h2 class="page_title">QnA 질문 및 답변</h2> 
  				<div class="tb_fr" >
  					<table class="tb">
  						<thead>
  							<tr>
  								<th style="color:white;">번호</th>
  								<th style="color:white;">제목</th>
  								<th style="color:white;">작성자</th>
  								<th style="color:white;">작성일</th>
  							</tr>
  						</thead>
  						<tbody>  
  							<c:forEach items="${list }" var="dto" varStatus="status">           
								<tr>
									<td>${status.count }</td>
									<td><a href="${path1 }/GetQnaCtrl.do?no=${dto.no }">${dto.title }</a></td>
									<td>${dto.author }</td>
									<td>
										<fmt:parseDate value="${dto.resdate }" var="resdate" pattern="yyyy-MM-dd HH:mm:ss" />
										<fmt:formatDate value="${resdate }" pattern="yyyy-MM-dd" />
									</td>
								</tr>
							</c:forEach>
						</tbody> 	
					</table>
					<c:if test='${not empty usId }'>	
						<div class="buttons">
						  <a href="${path1 }/qna/addQna.jsp" class="button is-success">질문글  등록</a>
						</div>
					</c:if>
				</div>
			</div>
    </section>
  </div>  
</div>
  <jsp:include page="/footer.jsp" />
  </body>
</html>