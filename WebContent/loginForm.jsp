<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录页面</title>
</head>
<body>
	<s:form action="login">
		<s:textfield name="username" label="用户名"> </s:textfield>
		<s:textfield name="password" label="密码"> </s:textfield>
		<s:submit value="登录"/>
	</s:form>
<!--
	<form action="login" method="post">
		<table>
			<caption><h3>用户登录</h3></caption>
			<tr>
				<td>用户名:<input type="text" name="username" /></td>
			</tr>
			<tr>
				<td>密&nbsp;&nbsp;&nbsp;码:<input type="text" name="password" /></td>
			</tr>
			<tr align="center">
				<td colspan="2">
					<input type="submit" value="登录"/>
					<input type="reset" value="重置"/>
				</td>
			</tr>
		</table>
	</form>
	  -->
</body>
</html>