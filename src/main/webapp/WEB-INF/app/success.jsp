<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script src="${pageContext.request.contextPath}/static/js/app.js"></script>
<script src="${pageContext.request.contextPath}/static/js/jquery-3.2.1.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<h2>Hello World!啊啊啊啊啊啊啊啊啊啊啊啊</h2>
wellcome ，，，，，，，，，，，<br>
<button onclick="test()" style="width: 100px;height: 50px">点击</button>
</body>
<script>
    
    function test() {
        getRequest("${pageContext.request.contextPath}/test",callback)
    }

    function callback(data) {
        alert(data);
        $("#body").html(data);
    }
</script>
</html>
