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
<title>Insert title here</title>

<jsp:include page="/head.jsp" />
</head>
<body>
<jsp:include page="/header.jsp" />
	<form name="frm1" id="frm1" action="AddUserCtrl.do" method="post" onsubmit="return joinCheck(this)" style="border: solid 3px #333;">
		<section class="section">
	         <div class="columns">
	            <div class="column is-4 is-offset-4">
	               <div class="field">
	                  <label class="label">ID</label>
	                  <div class="control">
	                     <input class="input" type="text" id="usid" name="usid" placeholder="Text input" required autofocus>
	                     <button type="button" class="button is-info" onclick="idCheck()">아이디 중복 확인</button>
	                     <input type="hidden" name="idck" id="idck" value="no" >
	                  </div>
	               </div>
	               <div class="field">
	                  <label class="label">PW</label>
	                  <div class="control">
	                     <input class="input" type="password" id="uspw" name="uspw" placeholder="Text input" required>
	                  </div>
	                  <label class="label">PW 확인</label>
	                  <div class="control">
	                     <input class="input" type="password" id="uspw2" name="uspw2" placeholder="Text input" required>
	                  </div>
	               </div>
	               <div class="field">
	                  <label class="label">Name</label>
	                  <div class="control">
	                     <input class="input" type="text" id="usname" name="usname" placeholder="Text input" required>
	                  </div>
	               </div> 
	               <div class="field">
	                  <label class="label">Address</label>
	                  <div class="control">
	                     <input class="input" type="text" id="address" name="address" placeholder="Text input" required>
	                  </div>
	               </div>
	               <div class="field">
	                  <label class="label">Tel</label>
	                  <div class="control">
	                     <input class="input" type="tel" id="tel" name="tel" placeholder="Phone Number" required>
	                  </div>
	               </div>
	               <div class="field">
	                  <label class="label">Email</label>
	                  <div class="control">
	                     <input class="input" type="text" id="email" name="email" placeholder="Email input" required>
	                  </div>
	               </div>
	                <div class="field">
	                  <label class="label">Birth</label>
	                  <div class="control">
	                     <input class="input" type="date" id="birth" name="birth" placeholder="Date input" required>
	                  </div>
	               </div>
	               
	
	               <div class="field is-grouped">
	                  <div class="control">
	                     <button type="submit" class="button is-link">회원가입</button>
	                  </div>
	               </div>
	            </div>
	         </div>
		</section>
	</form>
	<script>
	function idCheck(){
		if($("#id").val()==""){
			alert("아이디를 입력하지 않으셨습니다.")
			$("#id".focus());
			return;
		}
		var params = { id : $("#id").val() }
		$ajax({
			url:"${path1 }/IdCheckCtrl.do",
			type:"post",
			dataType:"json",
			data:params,
			success:function(result){
				console.log(result.result);
				var idChk = result.result;
				if(idChk==false){
					$("#idck").val("no");
					$("#msg").html("<strong style='color:red'>기존에 사용되고 있는 아이디 입니다. 다시 시도해주시기 바랍니다. </strong>");
					$("#id").focus();
				} else if(idChk==true){
					$("#idck").val("yes");
					$("#msg").html("<strong style='color:blue;'>사용 가능한 아이디 입니다.</strong>");
				} else if(idck==""){
					$("#msg").html("<strong>아이디가 확인되지 않으셨습니다. 다시 시도해주시기 바랍니다.");
				}
			}
		
		})
	}	
	
	function joinCheck(f){
		if(f.usPw.value!=f.usPw2.value){
			alert("비밀번호와 비밀번호 확인이 서로 다릅니다.");
			f.usPw.focus();
			return false;
		}
		
		if(f.idck.value!="yes"){
			alert("아이디 중복 체크를 하지 않으셨습니다.");
			return false;
		}
	}
</script>
	<jsp:include page="/footer.jsp" />
</body>
</html>				
