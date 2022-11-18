<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.*, java.lang.*" %>
<%@ page import="java.text.*, java.net.InetAddress" %>
<c:set var="path1" value="<%=request.getContextPath() %>" />
<c:set var="path2" value="${pageContext.request.contextPath }" />

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
    <div class="navbar-start" id="gnb">
    	<!-- ajax로 메뉴 로딩하여 추가하기 -->

				<div class="navbar-item has-dropdown is-hoverable">
			    	<a href="${path2 }/GetTourCateListCtrl.do?cate=A" class="navbar-link" >
				      	관광지
				    </a>
				    <div class="navbar-dropdown cate" id="cate01">
				    
				    </div>
				</div>
				<div class="navbar-item has-dropdown is-hoverable">
			    	<a href="${path2 }/GetTourCateListCtrl.do?cate=B" class="navbar-link cate">
				      	자연
				    </a> 
		   		    <div class="navbar-dropdown cate" id="cate02">
				    
				    </div>
				</div>
				<div class="navbar-item has-dropdown is-hoverable">
			    	<a href="${path2 }/GetTourCateListCtrl.do?cate=C" class="navbar-link cate">
				      	레포츠
				    </a>
		   		    <div class="navbar-dropdown cate" id="cate03">
				    
				    </div>
				</div>
				<div class="navbar-item has-dropdown is-hoverable">
			    	<a href="${path2 }/GetTourCateListCtrl.do?cate=D" class="navbar-link cate">
				      	쇼핑
				    </a>
		    		<div class="navbar-dropdown cate" id="cate04">
				    
				    </div>
				</div>
				<div class="navbar-item has-dropdown is-hoverable">
			    	<a href="${path2 }/GetTourCateListCtrl.do?cate=E" class="navbar-link cate">
				      	음식
				    </a>
		    		<div class="navbar-dropdown cate" id="cate05">
				    
				    </div>
				</div>	
				<div class="navbar-item has-dropdown is-hoverable">
			    	<a href="${path2 }/GetTourCateListCtrl.do?cate=F" class="navbar-link cate">
				      	숙박
				    </a>
		    		<div class="navbar-dropdown cate" id="cate06">
				    
				    </div>
				</div>
				<div class="navbar-item has-dropdown is-hoverable">
			    	<a href="${path2 }/GetTourCateListCtrl.do?cate=G" class="navbar-link cate">
				      	축제
				    </a>
		    		<div class="navbar-dropdown cate" id="cate07">
				    
				    </div>
				</div>
      
      <div class="navbar-item has-dropdown is-hoverable single">
        <a class="navbar-link">
          	고객에게
        </a>
        <div class="navbar-dropdown">
       	  <a class="navbar-item" href="${path1 }/sub/introduce.jsp">
           	소개
          </a>
          <hr class="navbar-divider">
          <a class="navbar-item" href="${path1 }/GetNoticeListCtrl.do">
            	공지사항
          </a>
          <a class="navbar-item" href="${path1 }/GetQnaListCtrl.do">
            	QnA
          </a>
        </div>
      </div>
      
    </div>
  </div>    
    <script>
	$(document).ready(function(){
		$.ajax({
			url:"${path2 }/MemuLoadCtrl.do",
			type:"POST",
			enctype:"UTF-8",
			datatype:"json",
			processData:false,
			contentType:false, 
			cache:false,
			success:function(data){
				$(".navbar-dropdown.cate").empty();
				var trans = $.parseJSON(data);
				$.each(trans, function(key, value){
					if(key=="data"){
						for(var i=0;i<value.length;i++){
							if(value[i].cate=="A"){
								$("#cate01").append("<a href='${path2 }/GetTourDetailCtrl.do?no="+value[i].no+"'>"+value[i].place+"</a>");
							} else if(value[i].cate=="B"){
								$("#cate02").append("<a href='${path2 }/GetTourDetailCtrl.do?no="+value[i].no+"'>"+value[i].place+"</a>");
							} else if(value[i].cate=="C"){
								$("#cate03").append("<a href='${path2 }/GetTourDetailCtrl.do?no="+value[i].no+"'>"+value[i].place+"</a>");
							} else if(value[i].cate=="D"){
								$("#cate04").append("<a href='${path2 }/GetTourDetailCtrl.do?no="+value[i].no+"'>"+value[i].place+"</a>");
							} else if(value[i].cate=="E"){
								$("#cate05").append("<a href='${path2 }/GetTourDetailCtrl.do?no="+value[i].no+"'>"+value[i].place+"</a>");
							} else if(value[i].cate=="F"){
								$("#cate06").append("<a href='${path2 }/GetTourDetailCtrl.do?no="+value[i].no+"'>"+value[i].place+"</a>");
							} else if(value[i].cate=="G"){
								$("#cate07").append("<a href='${path2 }/GetTourDetailCtrl.do?no="+value[i].no+"'>"+value[i].place+"</a>");
							}
						}
					}
				});
				
			}
		});
	});
	</script>
    
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
          <a class="button is-primary" href="${path1 }/user/agree.jsp" style="margin:30px;">
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