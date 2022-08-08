<%@page import="co.yw.sol.beans.Book"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>

<body>

<%
	Book [] b=new Book[5];
	b[0]=(Book)session.getAttribute("b1");
	b[1]=(Book)session.getAttribute("b2");
	b[2]=(Book)session.getAttribute("b3");
	b[3]=(Book)session.getAttribute("b4");
	b[4]=(Book)session.getAttribute("b5");
%>


	<div id="head" align="right">
		<span>${sessionScope.id}님</span>
		<a href="logout">로그아웃</a>
		&nbsp;&nbsp;
	</div>


	<center>
		<h2>솔데스크도서관</h2>
		<form:form action = "basket" method = "post" modelAttribute="book">
		
			<table width="800" border="no">
				<tr height="50">
					<td width="200" align="center">책번호</td>
					<td width="400" align="center">책제목</td>
					<td width="100" align="center">가격</td>
					<td width="50" align="center">갯수</td>
				</tr>

<%
		for(int i=0; i<5; i++){
			out.print("<tr>");
			out.print("<td>"+(i+1)+"</td>");
			out.print("<td>"+b[i].getBookName()+"</td>");
			out.print("<td>"+b[i].getBookPrice()+"</td>");
			out.print("<td><input type='number' name='cnt' value='0' min='0'></td>");
		}

%>
	
				
				<tr height="50">
					<td align="right" colspan="5"><input type="submit" value="장바구니 담기"></td>
				</tr>
			</table>
		</form:form>
	</center>
</body>

</html>