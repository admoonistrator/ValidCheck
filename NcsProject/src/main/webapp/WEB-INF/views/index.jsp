<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<body>
<div align="center">
<form:form action="login" modelAttribute="user" method="post">
	<h1 align="center">비회원 로그인</h1>
	<table>
	<tr><td>이름</td><td><form:input path="id" type="text"/></td><td><form:errors path="id"/></td></tr>
	<tr><td>이메일</td><td><form:input path="email" type="text"/></td><td><form:errors path="email"/></td></tr>
	<tr><td>비밀번호</td><td><form:input path="pw" type="text"/></td><td><form:errors path="pw"/></td></tr>
	<tr><td colspan="3" align="center"><form:button type="submit">로그인</form:button></td></tr>
	</table>

</form:form>
</div>

</body>
</html>