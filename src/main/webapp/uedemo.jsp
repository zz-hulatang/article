<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="server.php" method="post">
    <!-- 加载编辑器的容器 -->
    <script id="container" name="content" type="text/plain">
            这里写你的初始化内容
        </script>
</form>
<!-- 配置文件 -->
<script type="text/javascript" src="ueditor/ueditor.config.js"></script>
<!-- 编辑器源码文件 -->
<script type="text/javascript" src="ueditor/ueditor.all.js"></script>
<!-- 实例化编辑器 -->
<script type="text/javascript">
    var editor = UE.getEditor('container');
</script>
</body>
</html>
