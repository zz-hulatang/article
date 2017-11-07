<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/app.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery-3.2.1.min.js"></script>
</head>

<body>
	<h2>Hello World!</h2>

	<form>
		账号:<input id="email" type="text" name="email" value=""><br>
		密码:<input id="password" type="password" name="password" value=""><br>
		<input type="button" value="提交" onclick="login()">
	</form>

</body>
<script>
	$(document).ready(function() {
		test();
	});

	function callback(data) {
		if (data.code == 200) {
			localStorage.setItem("token", data.data.token);
			localStorage.setItem("id", data.data.id);
			//            getRequest("url/success","html");
			window.location.href = "url/success";
		} else if (data.code == 403) {
			alert("用户不存在或密码错误")
		}
	}

	function login() {
		var email = $("#email").val();
		var password = $("#password").val();
		ajaxRequest("login", "POST", {
			email : email,
			password : password
		}, callback);
	}
</script>
</html>
