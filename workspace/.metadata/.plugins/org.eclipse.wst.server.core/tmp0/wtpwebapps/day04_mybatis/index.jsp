<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="mybatis" method="get">
		<label for="id">아이디 : </label>
		<input type="text" name="id" placeholder="아이디를 입력하세요" required>
		<br>
		
		<label for="pw">비밀번호 : </label>
		<input type="password" name="pw" placeholder="비밀번호를 입력하세요" required>
		<br>
		
		<label for="age">나이 : </label>
		<input type="text" name="age" placeholder="비밀번호를 입력하세요" required>
		<br>
		
		<label for="name">이름 : </label>
		<input type="text" name="name" placeholder="이름을 입력하세요" required>
		<br>
		
		<label for="gender">성별</label><br>
		<input type="radio" name="gender" value="M">
		<label for="male">남자</label>
		<input type="radio" name="gender" value="W">
		<label for="female">여자</label>
		
		<button type="submit">회원가입</button>
	</form>
</body>
</html>