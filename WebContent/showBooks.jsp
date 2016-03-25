<%@page import="com.opensymphony.xwork2.util.ValueStack"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>李刚的图书</title>
</head>
<body>
	<table border="1" width="360">
		<caption>李刚的图书</caption>
		<%
			ValueStack valueStack = (ValueStack)request.getAttribute("struts.valueStack");
			String []books = (String[])valueStack.findValue("books");
			for(String book:books){
		%>
		<tr>
			<td>书名:</td>
			<td><%=book%></td>
		</tr>
		<%}%>
	</table>
</body>
</html>