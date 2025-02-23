<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${path}/resources/css/test.css">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="${path}/resources/js/board.js"></script>
<title>Insert title here</title>
</head>
<body>
<form id="frm">
	<input type="hidden" value="" name="seq" id="seq">
	<table>
		<thead>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>내용</th>
				<th>작성자</th>
				<th>날짜</th>
				<th>조회수</th>
			</tr>	
		</thead>
		<tbody>
			<c:forEach items="${list}" var="list">
	 			<tr>
	 			 	 <td>${list.seq}</td>
	  				 <td><a href="#" onclick="fn_goView(${list.seq})">${list.subject}</a></td>
					 <td>${list.content}</td>
	 				 <td>${list.name}</td>
	 				 <fmt:parseDate value="${list.reg_date}" var="dateValue" pattern="yyyyMMddHHmmss"/> 
	 				 <td><fmt:formatDate value="${dateValue}" pattern="yyyy-MM-dd"/></td>
	 				 <td>${list.readCount}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<button type="button" onclick="location.href='/board/regiView'">글쓰기</button>
</form>
</body>
</html>