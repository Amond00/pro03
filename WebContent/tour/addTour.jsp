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

<form action="AddTourCtrl.do" >
	<table>
		<tr>
			<th></th>
			<td></td>
			
		</tr>
	</table>
	<button type="submit"></button>
</form>

<script>
	function changeTourNo(){
		var cate = document.frm1.cate.value;
		if(cate==""){
			alert("분류를 선택하지 않으셨습니다.");
			document.frm1.cate.focus();
			return;
		}
		$.ajax({
			url:"${path1 }/NoLoadCtrl.do",
			type:"post",
			dataType="json",
			success:function(data){
				console.log(data.no);
				$("tourno").val(cate+data.no);
			}
		});
	}
</script>
<jsp:include page="${path1 }/footer.jsp" />
</body>
</html>				
