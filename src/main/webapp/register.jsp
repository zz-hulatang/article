<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/app.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery-3.2.1.min.js"></script>
</head>

<body>
	<h2>Hello World!</h2>

	<form id="form">
		账号:<input id="email" type="text" name="email" value=""><br>
		昵称:<input id="nickname" type="text" name="nickname" value=""><br>
		密码:<input id="password" type="password" name="password" value=""><br>
		电话:<input id="tel" type="text" name="tel"><br>
		简介:<input id="introduction" type="text" name="introduction" value=""><br>
		<input type="button" value="提交" onclick="register()">
	</form>

</body>
<script>
	$(document).ready(function() {
		test();
	});

    function loginCallback(data) {
        if (data.code == 200) {
            localStorage.setItem("token", data.data.token);
            localStorage.setItem("id", data.data.id);
            window.location.href = "${pageContext.request.contextPath}/url/success";
        } else if (data.code == 403) {
            alert("用户不存在或密码错误")
        }
    }

    function login() {
        var email = $("#email").val();
        var password = $("#password").val();
        ajaxRequest("${pageContext.request.contextPath}/login", "POST", {
            email : email,
            password : password
        }, loginCallback);
    }

	function registerCallback(data) {
		if (data.code == 200) {
			login();
		} else if (data.code == 403) {
			alert("注册失败，请重试")
		}
	}

	function register() {
		ajaxRequest("${pageContext.request.contextPath}/user/save", "POST",$("#form").serialize(), registerCallback);
	}
</script>
</html>
