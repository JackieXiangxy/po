<%@page import="com.jackie.bean.Admin"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>adminlist</title>
</head>
<body>
<%List<Admin> admin=(List<Admin>)session.getAttribute("adminlist"); %>

<table border="2px" border="3px" bordercolor="red" cellpadding="10px">

		<tr>
			<td>课程编号</td>
			<td>课程名</td>
			<td>教师编号</td>
			<td>编辑</td>

		</tr>
		<%
			for (Admin adm:admin) {
		%>
		<tr>
			<td><%=adm.getId()%></td>
			<td><%=adm.getUsername()%></td>
			<td><%=adm.getPass()%></td>
			<td><a href="home?action=delete&cno=<%=adm.getId()%>">删除</a>
				<a href="home?action=edit&cno=<%=adm.getId()%>">更改</a></td>
		</tr>
		<%
			}
		%>
	</table>
</body>
</html>