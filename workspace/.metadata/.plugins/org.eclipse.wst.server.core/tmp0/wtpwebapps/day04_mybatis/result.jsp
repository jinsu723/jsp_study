<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1><%= request.getAttribute("id") %></h1>
	<h1><%= request.getAttribute("pw") %></h1>
	<h1><%= request.getAttribute("name") %></h1>
	<h1><%= request.getAttribute("age") %></h1>
	<h1><%= request.getAttribute("gender") %></h1>
</body>
</html>