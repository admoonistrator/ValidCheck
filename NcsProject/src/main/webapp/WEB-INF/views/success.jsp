<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	span{
		margin-left: 80%;
	}
	
	td{
		margin: 200px;
		padding: 50px;
	}
	table{
		border-color: green;
	}
    p{
        text-align: center;
    }
</style>
</head>
<body>

	<div id="head" align="right">
		<span>${sessionScope.id}님</span>
		<a href="logout">로그아웃</a>
		&nbsp;&nbsp;
	</div>
	
<center>
<table border="1px">
	<td><p>구매완료</p>
		<p>구매해주셔서 감사합니다!</p>
		
	</td>
</table>
</center>
</body>
</html>