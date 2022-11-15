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
    <title>회원 목록</title>
    <jsp:include page="/head.jsp" />
  </head>
  <body>
  <jsp:include page="/header.jsp" />
 
  <div class="columns is-full">
   <jsp:include page="../admin/sidebar.jsp" />
    <div class="column is-10">
			<form name="upload" id="upload" action="${path1 }/ImgUploadCtrl.do">
			<table>
			
				<tr>
					<th>위치</th>
					<td>
						<div class="select is-primary">
						  <select class="input is-normal" name="pos" id="pos">
						    <option>위치 번호를 선택해 주세요</option>
						    <option>With options</option>
						    <option>With options</option>
						    <option>With options</option>
						    <option>With options</option>
						    <option>With options</option>
						  </select>
						</div>
					</td>
				</tr>
				<tr>
					<th>장소번호</th>
					<td>
						<div class="select is-primary">
						  <select class="input is-normal" name="pos" id="pos">
						    <option>장소 번호를 선택해 주세요</option>
						    <option>With options</option>
						    <option>With options</option>
						    <option>With options</option>
						    <option>With options</option>
						    <option>With options</option>
						  </select>
						</div>
					</td>
				</tr>
				<tr>
					<th>업로드 파일1</th>
					<td>
						<div class="file has-name">
						  <label class="file-label">
						    <input class="file-input" type="file" name="resume">
						    <span class="file-cta">
						      <span class="file-icon">
						        <i class="fas fa-upload"></i>
						      </span>
						      <span class="file-label">
						        Choose a file…
						      </span>
						    </span>
						    <span class="file-name">
						      Screen Shot 2017-07-29 at 15.54.25.png
						    </span>
						  </label>
						</div>
					</td>
				</tr>
				<tr>
					<th>업로드 파일2</th>
					<td>
						<div class="file has-name">
						  <label class="file-label">
						    <input class="file-input" type="file" name="resume">
						    <span class="file-cta">
						      <span class="file-icon">
						        <i class="fas fa-upload"></i>
						      </span>
						      <span class="file-label">
						        Choose a file…
						      </span>
						    </span>
						    <span class="file-name">
						      Screen Shot 2017-07-29 at 15.54.25.png
						    </span>
						  </label>
						</div>
					</td>
				</tr>
				
			</table>
		</form>
	</div>
  </div>
  <jsp:include page="/footer.jsp"/>
  </body>
</html>