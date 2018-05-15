<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="description" content="">
<meta name="author" content="">

<title>基于jsp+javaBean+Servlet简单管理系统</title>
	<!-- Mobile Specific Metas
  ================================================== -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- CSS
  ================================================== -->
    <!-- Bootstrap -->
    <link href="view/assets/css/bootstrap.min.css" rel="stylesheet"> 
    <link rel="stylesheet" href="view/css/font-awesome.min.css"> 
    <link rel="stylesheet" href="view/css/animate.css"> 
    <link rel="stylesheet" href="view/css/prettyPhoto.css"> 
    <link rel="stylesheet" href="view/css/style.css"> 
     <link href="../bootstrap/css/bootstrap.css" rel="stylesheet"/>
    <link href="../bootstrap/css/bootstrap-theme.css" rel="stylesheet"/>
</head>
<body>
<h1 >简单成绩管理系统</h1>