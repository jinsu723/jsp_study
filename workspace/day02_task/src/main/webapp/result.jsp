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
	<p><%=request.getAttribute("Name") %>님 환영합니다</p>
	<p><%=request.getAttribute("Age") %> 살 입니다</p>
	<p>성별 : <%=request.getAttribute("gender") %></p>
	<p>취미 : <%
		String[] hobbies=(String[]) request.getAttribute("hobbies");
		if(hobbies != null) {
			for(String hobby : hobbies) {
				out.print(hobby + " ");
			}
		} else {
			out.print("취미가 없습니다");
		}
	%></p>
</body>
</html>