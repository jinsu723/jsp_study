<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>result.jsp 결과화면</p>
	<p>이름 : <%=request.getAttribute("userName") %></p>
	<p>나이 : <%=request.getAttribute("useAge") %></p>
</body>
</html>