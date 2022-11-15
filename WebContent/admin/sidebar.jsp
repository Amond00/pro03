<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.*, java.lang.*" %>
<%@ page import="java.text.*, java.net.InetAddress" %>
<c:set var="path1" value="<%=request.getContextPath() %>" />
<div class="column is-2 has-background-primary-dark has-text-white" style="min-height:100vh">
	<div class="navbar-menu" style="margin-top:30px;"> 
			<figure class="image is-128x128">
	  			<img src="https://cdn-icons-png.flaticon.com/512/2990/2990282.png" style=" width:40px; heigh:40px;">
			</figure>
			<a href="${path1 }/GetUserListCtrl.do" class="button is-primary is-light" style="margin-left:-80px; ">회원관리</a>
	</div>
	<div class="navbar-menu" style="margin-top:30px;"> 
			<figure class="image is-128x128">
	  			<img src="https://cdn-icons-png.flaticon.com/512/871/871960.png" style=" width:40px; heigh:40px;">
			</figure>
			<a href="${path1 }/tour/imgUpload.jsp" class="button is-primary is-light" style="margin-left:-80px;">관광지 추가</a>
	</div>
	<div class="navbar-menu" style="margin-top:30px;"> 
			<figure class="image is-128x128">
	  			<img src="https://cdn-icons-png.flaticon.com/512/871/871960.png" style=" width:40px; heigh:40px;">
			</figure>
			<a href="${path1 }/ImgUploadCtrl.do" class="button is-primary is-light" style="margin-left:-80px;">관광지 추가</a>
	</div>
	<div class="navbar-menu" style="margin-top:30px;"> 
			<figure class="image is-128x128">
	  			<img src="https://cdn-icons-png.flaticon.com/512/871/871960.png" style=" width:40px; heigh:40px;">
			</figure>
			<a href="${path1 }/ImgUploadCtrl.do" class="button is-primary is-light" style="margin-left:-80px;">관광지 추가</a>
	</div>
</div>