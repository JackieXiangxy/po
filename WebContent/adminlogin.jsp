<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录</title>
<link href="view/css/admin.css" rel="stylesheet">
<link href="view/css/jquery-ui-1.8.16.custom.css" rel="stylesheet">
<script src="view/js/jquery.min.js"></script>
<script src="view/js/jquery-ui-1.8.16.custom.min.js"></script>
</head>


<script type="text/javascript">

	function getURL(url) {
		var xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	
		xmlhttp.open("GET", url, false);
		xmlhttp.send();
		if (xmlhttp.readyState == 4) {
			if (xmlhttp.Status != 200)
				alert("不存在");
			return xmlhttp.Status == 200;
		}
		return false;
	}
	
	getURL("view/js/jquery.min.js");

	// 禁止登录页内嵌
	if (window != top){
		parent.location.href = location.href; 
	}
	
	var UA = navigator.userAgent.toLowerCase();
    var browerKernel = {
        isWebkit: function() {
            if (/webkit/i.test(UA)) return true;
            else return false;
        },
	    isFirefox: function() {
            if (/firefox/i.test(UA)) return true;
            else return false;
		}
    }

	if(!browerKernel.isWebkit()){
		alert("您当前浏览器无法兼容本系统！\n推荐使用Google Chrome 浏览器！\n\n其它兼容浏览器：\n360浏览器极速模式\n搜狗高速浏览器3\n世界之窗极速版\n猎豹浏览器\nQQ浏览器\n其它浏览器请自测");
	}
	
	$(function() {
		$('form :input:first').focus();
		$('form :input').keyup(function(event) {
			if (event.keyCode == 13) {
				$('#loginForm').submit();
			}
		});
	});
	
</script>


<body id="login">
	<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
	<%String errMsg=(String)request.getSession().getAttribute("errMsg"); %>
	<div id="wrapper">
		<div id="content">
			<div id="header">
				<img src="/view/images/logo.png" alt="EOVA">
			</div>
			<!--  
            <div id="darkbanner" class="banner320">
                <h2 style='font-family: "Microsoft YaHei"'>运营支撑系统 ┇ USER LOGIN</h2>
            </div>
            -->
			<% if (null != errMsg) { %>
			<%-- 登录验证失败提示 --%>
			<div class="container">
				<div class="alert alert-error">
					<%=errMsg %>
				</div>
			</div>
			<%    request.getSession().removeAttribute("msg");
    } %>
			<div id="darkbannerwrap"></div>
			<form id="loginForm" method="post" action="admin?action=adminlogin">
				<fieldset class="form">
					<p>
						<label class="loginlabel" for="user_name"> 帐号:</label> <input
							class="logininput ui-keyboard-input ui-widget-content ui-corner-all"
							name="username" id="user_name" type="text"    />
					</p>
					<p>
						<label class="loginlabel" for="user_password"> 密码:</label> <span>
							<input
							class="logininput ui-keyboard-input ui-widget-content ui-corner-all"
							name="password"  id="user_password"
							type="password" />
						</span>
					</p>
					<div id="loginbtn">
						<button id="loginbtn" type="button" class="positive" name="Submit">
							登录</button>
					</div>
					<div>
						<button id="loginbtn" type="button" class="positive" name="Submit">
							<img src="/ui/login/key.png" />快速登录
						</button>
					</div>
				</fieldset>
			</form>
		</div>
	</div>

	<script type="text/javascript">
        $(document).ready(function() {
            $(".logininput").blur(function() {
                if ($(this).val() == "") {
                    $(this).css("border-color", "red");
                } else {
                    $(this).css("border-color", "#D9D6C4");
                }
            })

            $("#loginbtn").click(function() {
                var k = 0;
                var ajaxhtml = "";
                $(".logininput").each(function(i, obj) {
                    if ($(obj).val().trim() == "") {
                        k++;
                        $(this).css("border-color", "red");
                        $(this).focus();
                        return false;
                    }
                });
                if (k != 0) return;
                ajaxhtml = $("#loginbtn").html();
                $("#loginbtn").html("Loading....");
                $("#loginbtn").attr("disabled", "disabled");
				$("#loginForm").submit();
            })
        });
</script>

</body>
</html>