<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="com.jackie.bean.Course"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="frame/header.jsp"></jsp:include>
<body>
	<%
		List<Course> cList = (List<Course>) session.getAttribute("clist");
	%>
	<table border="2px" border="3px" bordercolor="red" cellpadding="10px">

		<tr>
			<td>课程编号</td>
			<td>课程名</td>
			<td>教师编号</td>
			<td>编辑</td>

		</tr>
		<%
			for (Course course : cList) {
		%>
		<tr>
			<td><%=course.getCno()%></td>
			<td><%=course.getCname()%></td>
			<td><%=course.getTno()%></td>
			<td><a href="home?action=delete&cno=<%=course.getCno()%>">删除</a>
				<a href="home?action=edit&cno=<%=course.getCno()%>">更改</a></td>
		</tr>
		<%
			}
		%>
	</table>
</body>
<jsp:include page="frame/footer.jsp"></jsp:include>