<%@page import="co.yw.sol.beans.Book"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>장바구니</title>

	<style type="text/css">
		head#span{
			padding: 10px;
			margin: 10px;
		}
		head#a{
			padding: 10px;
			border: 1px soild black;
			margin: 10px;
			color:black;
			text-decoration: none;
		}
		foot#a{
			padding: 10px;
			border: 1px soild black;
			margin: 10px;
			color:black;
			text-decoration: none;
		}
		foot#span{
			padding: 10px;
			border: 1px soild black;
			margin: 10px;
		}
	</style>
</head>
<body>
	
<%
	int sum=0;
	List<Book> buy=(List)request.getAttribute("buy");

%>	

	<div id="head" align="right">
		<span>${sessionScope.id}님</span>
		<a href="logout">로그아웃</a>
		&nbsp;&nbsp;
	</div>
	
	
	
	<div id="main" align="center">
		<h2 align="center">장바구니</h2>
		<table>
			<tr align="center">
				<th width="50px">번호</th>
				<th width="200px">책제목</th>
				<th width="100px">가격</th>
				<th width="100px">수량</th>
			</tr>
		<%
			for(int i=0; i<buy.size() ; i++){
				int price=buy.get(i).getBookPrice();
				int cnt=buy.get(i).getCnt();
				sum+=price*cnt;
				out.print("<tr align='center'>");
				out.print("<th>"+(i+1)+"</th>");
				out.print("<td>"+buy.get(i).getBookName()+"</td>");
				out.print("<td>"+price+"</td>");
				out.print("<td>"+cnt+"</td>");
				out.print("</tr>");
			}
			request.setAttribute("sum", sum);
		%>	
		</table>
	</div>
	
	<br>
	
	<div id="foot" align="center">
		<span>총 금액 : <%=sum %></span>
		<a href="success">구매하기</a>
	</div>
	

	
</body>
</html>