<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String usid = (String) session.getAttribute("usId");
	String usname = (String) session.getAttribute("usName");
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.*, java.lang.*" %>
<%@ page import="java.text.*, java.net.InetAddress" %>
<c:set var="path1" value="<%=request.getContextPath() %>" />

<nav class="navbar" role="navigation" aria-label="main navigation">
  <div class="navbar-brand">
    <a class="navbar-item" href="<%=request.getContextPath() %>/">
      <img src="https://www.ito.or.kr/main/img/inc/logo.gif" width="112" height="28">
    </a>

    <a role="button" class="navbar-burger" aria-label="menu" aria-expanded="false" data-target="navbarBasicExample">
      <span aria-hidden="true"></span>
      <span aria-hidden="true"></span>
      <span aria-hidden="true"></span>
    </a>
  </div>

  <div id="navbarBasicExample" class="navbar-menu">
    <div class="navbar-start">
      <a class="navbar-item">
        Home
      </a>

      <a class="navbar-item" href="${path1 }/GetNoticeListCtrl.do">
        	게시판
      </a>

      <div class="navbar-item has-dropdown is-hoverable">
        <a class="navbar-link">
          More
        </a>

        <div class="navbar-dropdown">
          <a class="navbar-item">
            About
          </a>
          <a class="navbar-item">
            Jobs
          </a>
          <a class="navbar-item">
            Contact
          </a>
          <hr class="navbar-divider">
          <a class="navbar-item">
            Report an issue
          </a>
        </div>
      </div>
    </div>

    <div class="navbar-end">
      <div class="navbar-item">
        <div class="buttons">
        
        <% if(usid!=null) { %>
        	<span><strong><%=usname %>님</strong></span>
        	
        	<a class="button is-primary" href="${path1 }/JoinCtrl.do">
            	<strong>마이페이지</strong>
         	</a>
         	
         	<a class="button is-primary" href="${path1 }/UserLogOutCtrl.do">
            	<strong>로그아웃</strong>
         	</a>
        	
        	<% if(usid.equals("admin"))  { %>
        	
        	<a class="button is-primary" href="${path1 }/MemberInfoCtrl.do">
            	<strong>회원관리</strong>
         	</a>
         	
         	<a class="button is-primary" href="${path1 }/AdminInfoCtrl.do">
            	<strong>관리자 페이지로</strong>
          	</a>
          
        	<% } %>
        <% }  else { %>
          <a class="button is-primary" href="${path1 }/JoinCtrl.do">
            <strong>회원가입</strong>
          </a>
          <a class="button is-light" href="${path1 }/login.jsp">
            		로그인	
          </a>
         <% } %>
         
        </div>
      </div>
    </div>
  </div>
</nav>