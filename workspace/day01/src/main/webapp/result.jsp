<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- html 주석 -->
<%-- jsp 주석 --%>

<%-- <% %> 태그 영역은 자바 명령어를 작성할 수 있고 스크립틀릿이라고 부른다 --%>
	<%-- <h1><%=request.getParameter("userName") + "님 환영합니다"%></h1> --%>
	<h1><%= request.getAttribute("userName") + "님 아이시떼루" %></h1>
</body>
</html>