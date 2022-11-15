<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.*, java.lang.*" %>
<%@ page import="java.text.*, java.net.InetAddress" %>
<c:set var="path1" value="<%=request.getContextPath() %>" />

<nav class="navbar" role="navigation" aria-label="main navigation">
  <div class="navbar-brand">
  
    <a class="navbar-item" href="${path1 }/">
      <img src="https://www.ito.or.kr/main/img/inc/logo.gif" width="152" height="58">
    </a>

    <a role="button" class="navbar-burger" aria-label="menu" aria-expanded="false" data-target="navbarBasicExample">
      <span aria-hidden="true"></span>
      <span aria-hidden="true"></span>
      <span aria-hidden="true"></span>
    </a>
  </div>

  <div id="navbarBasicExample" class="navbar-menu">
    <div class="navbar-start">

      <div class="navbar-item has-dropdown is-hoverable">
        <a class="navbar-link" href="${path1 }/GetTour.do?tourno=1">
          	관광 콘텐츠
        </a>
        <div class="navbar-dropdown">
          <a class="navbar-item" href="${path1 }/GetTour.do?tourno=1" >
            	인천관광 대표 콘텐츠
          </a>
          <a class="navbar-item" href="${path1 }/GetTour.do?tourno=2">
            	섬·해양 관광
          </a>
          <a class="navbar-item" href="${path1 }/GetTour.do?tourno=3">
       			 축제·이벤트
          </a>
          <a class="navbar-item" href="${path1 }/GetTour.do?tourno=4">
         	   스마트관광도시	
          </a>
        </div>
      </div>
      
      <div class="navbar-item has-dropdown is-hoverable">
        <a class="navbar-link">
          	열린경영
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
      
      <div class="navbar-item has-dropdown is-hoverable">
        <a class="navbar-link">
          	알림마당
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
      
      <div class="navbar-item has-dropdown is-hoverable">
        <a class="navbar-link">
          	공사소개
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
          <a class="navbar-item" href="${path1 }/GetNoticeListCtrl.do">
            	공지사항
          </a>
        </div>
      </div>
      
    </div>
    
    <div class="navbar-end">
      <div class="navbar-item">
        <div class="buttons">        
        <c:if test="${not empty usId }">
        	<span style="margin:30px; color:blue; font-weight:bolder; font-size:21px;" >${usName }님</span>
        	
        	<a class="button is-primary" href="${path1 }/JoinCtrl.do">
            	<strong>마이페이지</strong>
         	</a>
         	
         	<a class="button is-primary" href="${path1 }/UserLogOutCtrl.do">
            	<strong>로그아웃</strong>
         	</a>
        	
        	<c:if test='${usId.equals("admin")}'>
         	
         	<a class="button is-danger" href="${path1 }/AdminCtrl.do">
            	<strong>관리자 페이지로</strong>
          	</a>
          
        	</c:if>
        </c:if>
        <c:if test="${empty usId }">
          <a class="button is-primary" href="${path1 }/user/agree.jsp">
            <strong>회원가입</strong>
          </a>
          <a class="button is-light" href="${path1 }/user/login.jsp">
            		로그인	
          </a>
         </c:if>
         
        </div>
      </div>
    </div>
  </div>
</nav>