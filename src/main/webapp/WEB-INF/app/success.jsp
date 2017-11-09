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
<body id="body">
<h2>Hello World!啊啊啊啊啊啊啊啊啊啊啊啊</h2>
wellcome ，，，，，，，，，，，<br>
<button onclick="test()" style="width: 100px;height: 50px">点击</button>
</body>
<script>
    
    function test() {
        var article = {
            "userId":"09fb3457-e298-435c-8234-fff52c4070b6",
            "title":"wo是店主",
            "content":"哈记得哈哈登记卡刷卡觉得adasldasjldsjdkllasdklas离开ALD就撒大家拉斯科技达拉斯简单来说甲氨蝶呤看见啊圣诞快乐",
            "topics":[
                {
                    "id":"98d2d1c6-f36f-4131-be5d-088209c7b8fd"
                },
                {
                    "id":"c5d92861-4bc3-4059-b5a3-59495f796b41"
                }
            ]
        };
        ajaxRequest("${pageContext.request.contextPath}/article/save","POST",article,callback);
        <%--getRequest("${pageContext.request.contextPath}/article/find/72f06c65-c0d6-4d4a-9e4b-befd06058f99",callback);--%>
    }

    function callback(data) {
        if(data.code){
            alert(data.data.name);
        }else{
            $("#body").html(data);
        }
    }
</script>
</html>
