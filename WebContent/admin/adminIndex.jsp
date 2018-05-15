<%@page import="com.jackie.bean.Admin"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<link href="view/assets/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="view/css/font-awesome.min.css">
<link rel="stylesheet" href="view/css/animate.css">
<link rel="stylesheet" href="view/css/prettyPhoto.css">
<link rel="stylesheet" href="view/css/style.css">
<jsp:include page="../frame/header.jsp"></jsp:include>

<%
	Admin admin = (Admin) session.getAttribute("admin");
%>


<body data-spy="scroll" data-target="#myScrollspy">
	<div class="container">


		<div class="row">
			<div class="col-lg-12">
				<ol class="breadcrumb">
					<li><a href="#">个人管理</a></li>
					<li><a href="#">朋友圈权限</a></li>
					<li><a href="#">设置</a></li>
					<li><a href="#">欢迎您， <%=admin.getUsername()%></a></li>

				</ol>

			</div>
			<div class="col-xs-3" id="myScrollspy">
				<ul class="nav nav-pills nav-stacked" data-spy="affix">
					<li class="active"><a href="#section-1">第一部分</a></li>
					<li><a href="#section-2">第二部分</a></li>
					<li><a href="#section-3">第三部分</a></li>
					<li><a href="#section-4">第四部分</a></li>
					<li><a href="#section-5">第五部分</a></li>
				</ul>
			</div>
			<div class="col-xs-9">
				<h2 id="section-1">第一部分</h2>
				<p>Every single time you access a website, you leave tracks.
					Tracks that others can access. If you don't like the idea, find out
					what software can help you cover them.Anti Tracks is a complete
					solution to protect your privacy and enhance your PC performance.
					With a simple click Anti Tracks securely erase your internet
					tracks, computer activities and programs history information stored
					in many hidden files on your computer.Anti Tracks support Internet
					Explorer, AOL, Netscape/Mozilla and Opera browsers. It also include
					more than 85 free plug-ins to extend erasing features to support
					popular programs such as ACDSee, Acrobat Reader, KaZaA, PowerDVD,
					WinZip, iMesh, Winamp and much more. Also you can easily schedule
					erasing tasks at specific time intervals or at Windows stat-up/
					shutdown.To ensure maximum privacy protection Anti Tracks
					implements the US Department of Defense DOD 5220.22-M, Gutmann and
					NSA secure erasing methods, making any erased files unrecoverable
					even when using advanced recovery tools.</p>
				<hr>
				<h2 id="section-2">第二部分</h2>
				<p>Completely destroy information stored without your knowledge
					or approval: Internet history, Web pages and pictures from sites
					visited on the Internet, unwanted cookies, chatroom conversations,
					deleted e-mail messages, temporary files, the Windows swap file,
					the Recycle Bin, previously deleted files, valuable corporate trade
					secrets, Business plans, personal files, photos or confidential
					letters, etc.East-Tec Eraser 2005 offers full support for popular
					browsers (Internet Explorer, Netscape Navigator, America Online,
					MSN Explorer, Opera), for Peer2Peer applications (Kazaa, Kazaa
					Lite, iMesh, Napster, Morpheus, Direct Connect, Limewire, Shareaza,
					etc.), and for other popular programs such as Windows Media Player,
					RealPlayer, Yahoo Messenger, ICQ, etc. Eraser has an intuitive
					interface and wizards that guide you through all the necessary
					steps needed to protect your privacy and sensitive
					information.Other features include support for custom privacy
					needs, user-defined erasure methods, command-line parameters,
					integration with Windows Explorer, and password protection.</p>
				<hr>
				<h2 id="section-3">第三部分</h2>
				<p>GhostSurf Platinum ensures your safety online by providing an
					anonymous, encrypted Internet connection, and GhostSurf stops
					spyware, eliminates ads and erases your tracks. GhostSurf lets you
					customize your privacy level in real-time to suit your surfing
					needs. A variety of options enable you to block personal
					information, mask your IP address, route your data through
					anonymous hubs and even encrypt your Internet connection.
					GhostSurf's Privacy Control Center allows you to see and block
					every piece of data that your computer emits over the Internet,
					preventing even your Internet Service Provider (ISP) from creating
					a profile on you.</p>
				<hr>
				<h2 id="section-4">第四部分</h2>
				<p>GhostSurf Platinum ensures your safety online by providing an
					anonymous, encrypted Internet connection, and GhostSurf stops
					spyware, eliminates ads and erases your tracks. GhostSurf lets you
					customize your privacy level in real-time to suit your surfing
					needs. A variety of options enable you to block personal
					information, mask your IP address, route your data through
					anonymous hubs and even encrypt your Internet connection.
					GhostSurf's Privacy Control Center allows you to see and block
					every piece of data that your computer emits over the Internet,
					preventing even your Internet Service Provider (ISP) from creating
					a profile on you.</p>
				<hr>
				<h2 id="section-5">第五部分</h2>
				<p>GhostSurf Platinum ensures your safety online by providing an
					anonymous, encrypted Internet connection, and GhostSurf stops
					spyware, eliminates ads and erases your tracks. GhostSurf lets you
					customize your privacy level in real-time to suit your surfing
					needs. A variety of options enable you to block personal
					information, mask your IP address, route your data through
					anonymous hubs and even encrypt your Internet connection.
					GhostSurf's Privacy Control Center allows you to see and block
					every piece of data that your computer emits over the Internet,
					preventing even your Internet Service Provider (ISP) from creating
					a profile on you.</p>
			</div>
		</div>
	</div>
</body>


<jsp:include page="../frame/footer.jsp"></jsp:include>