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
<meta charset="UTF-8">
<title>로그인창</title>
<jsp:include page="/head.jsp" />
</head>
<body>
<jsp:include page="/header.jsp" />
		<section class="hero is-primary is-fullheight">
		  <div class="hero-body">
		    <div class="container">
		      <div class="columns is-centered">
		        <div class="column is-5-tablet is-4-desktop is-3-widescreen">
		          <form name="frm1" action="<%=request.getContextPath() %>/UserLoginCtrl.do" method="post" id="loginForm" class="box">
		          
		            <div class="field">
		              <label for="" class="label">ID</label>
		              <div class="control has-icons-left">
		                <input type="text" placeholder="ID" class="input" required id="usId" name="usId">
		                <span class="icon is-small is-left">
		                  <i class="fa fa-envelope"></i>
		                </span>
		              </div>
		            </div>
		            
		            <div class="field">
		              <label for="" class="label">Password</label>
		              <div class="control has-icons-left">
		                <input type="password" placeholder="*******" class="input" required id="usPw" name="usPw">
		                <span class="icon is-small is-left">
		                  <i class="fa fa-lock"></i>
		                </span>
		              </div>
		            </div>
		            
		            <!-- <div class="field">
		              <label for="" class="checkbox">
		                <input type="checkbox">
		               Remember ID
		              </label>
		            </div> -->
		            <div class="field">
		              <button class="button is-success" type="submit">
		                	로그인
		              </button>
		            </div>
		          </form>
		        </div>
		      </div>
		    </div>
		  </div>
		</section>
<jsp:include page="/footer.jsp" />
</body>
</html>				
