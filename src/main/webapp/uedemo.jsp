<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div style="width: 860px;height: 528px">
    <div>
        <script type="text/plain" id="editor"></script>
        <div class="con-split"></div>
    </div>
</div>
<input type="button" value="获取数据" onclick="getCon()">
<br>
<form action="server.php" method="post">
    <!-- 加载编辑器的容器 -->
    <script id="container2" name="content" type="text/plain"></script>
</form>

<!-- 配置文件 -->
<script type="text/javascript" src="ueditor/ueditor.config.js"></script>
<!-- 编辑器源码文件 -->
<script type="text/javascript" src="ueditor/ueditor.all.js"></script>
<!-- 实例化编辑器 -->
<script type="text/javascript">
    var editor = UE.getEditor('editor');
    function getCon(){
        editor.ready(function () {
            var html = editor.getContent();
            alert(html);
            var editor2 = UE.getEditor('container2');
            editor2.setHide();
            editor2.ready(function () {
                editor2.setContent(html);
            });
        });
    }
</script>
</body>
</html>
