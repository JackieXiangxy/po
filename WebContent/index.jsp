<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<jsp:include page="frame/header.jsp"></jsp:include>
<body>

	<!-- section menu start -->

	<section class="section-menu">
		<div class="navbar navbar-default main-nav" role="navigation">
			<div class="container">
				<div class="navbar-header">
					<button class="navbar-toggle collapsed"
						data-target="#bs-example-navbar-collapse-1" data-toggle="collapse">
						<span class="sr-only"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span> <span class="icon-bar"></span>
					</button>

					<a href="#" class="navbar-brand">mybook</a>
				</div>
				<!-- navbar-header end -->
				<!-- main nav  -->

				<div class="collapse navbar-collapse navigation"
					id="bs-example-navbar-collapse-1" role="navigation">
					<ul class="nav navbar-nav navbar-right">
						<li class="active"><a href="#section-banner">首页 </a></li>
						<li><a href="#section-profile">关于我们 </a></li>
						<li><a href="#section-skill">技能 </a></li>
						<li><a href="#section-resume">冲阿里</a></li>
						<li><a href="#section-testimonial">Testimonials </a></li>
						<li><a href="#section-portfolio">Portfolio </a></li>
						<li><a href="#section-contact">Contact me </a></li>
					</ul>
					
				</div>
				<!-- /.navbar-collapse -->
			</div>
			<!-- /.container9-fluid -->
		</div>
	</section>
	<!-- section menu end -->

	<section id="section-banner">
		<div class="container">
			<div class="row">
				<div class="banner-content wow fadeInRight">
					<h2 class="title">
						嗨,大家好<br /> <span> 我是青宇人工智能, <br /> 一个致力于解决你身边问题的助手
						</span>
					</h2>
					<a href="home?action=query" class="btn btn-default">show Course</a>
					<a href="admin?action=adminquery" class="btn btn-default">show Admins</a>
					<a href="adminlogin.jsp" class="btn btn-default">login</a>
					<a href="register.jsp" class="btn btn-default">register</a>
				</div>
			</div>
		</div>
	</section>


	<jsp:include page="frame/footer.jsp"></jsp:include>