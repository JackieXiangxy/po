<%@page import="com.jackie.bean.Course"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<jsp:include page="frame/header.jsp"></jsp:include>

<body>
<% Course course =(Course)session.getAttribute("cservice") ;%>


<form action="home?action=update" method="post">

<input type="text" name="cno" value="<%=course.getCno() %>">
<input type="text" name="cname" value="<%= course.getCname() %>">
<input type="text" name="tno" value="<%= course.getTno() %>">
<input type="submit" value="提交">
</form>
</body>
<jsp:include page="frame/footer.jsp"></jsp:include>