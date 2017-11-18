<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta content="" name="description" />
    <meta content="webthemez" name="author" />
    <title>BRILLIANT Free Bootstrap Admin Template</title>
    <!-- Bootstrap Styles-->
    <link href="${pageContext.request.contextPath}/static/assets/css/bootstrap.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/static/assets/css/select2.min.css" rel="stylesheet" >
    <!-- FontAwesome Styles-->
    <link href="${pageContext.request.contextPath}/static/assets/css/font-awesome.css" rel="stylesheet" />
    <!-- Morris Chart Styles-->
    <link href="${pageContext.request.contextPath}/static/assets/js/morris/morris-0.4.3.min.css" rel="stylesheet" />
    <!-- Custom Styles-->
    <link href="${pageContext.request.contextPath}/static/assets/css/custom-styles.css" rel="stylesheet" />
    <!-- Google Fonts-->
    <link href='https://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/assets/js/Lightweight-Chart/cssCharts.css">
</head>

<body>
<div id="wrapper">
    <nav class="navbar navbar-default top-navbar" role="navigation">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="index.html"><strong><i class="icon fa fa-plane"></i> 南瓜饼子店</strong></a>

            <div id="sideNav" href="" onclick="switchNav()">
                <i class="fa fa-bars icon"></i>
            </div>
        </div>

        <ul class="nav navbar-top-links navbar-right">

            <!-- /.dropdown -->

            <!-- /.dropdown -->

            <!-- /.dropdown -->
            <li class="dropdown"  style="margin-right: 45px">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
                    <i class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
                </a>
                <ul class="dropdown-menu dropdown-user">
                    <li><a onclick="logout()"><i class="fa fa-sign-out fa-fw"></i> 退出</a>
                    </li>
                </ul>
                <!-- /.dropdown-user -->
            </li>
            <!-- /.dropdown -->
        </ul>
    </nav>
    <!--/. NAV TOP  -->
    <nav class="navbar-default navbar-side" role="navigation" id="menuList">
        <div class="sidebar-collapse">
            <ul class="nav" id="main-menu">

                <li>
                    <a href="${pageContext.request.contextPath}/url/success"><i class="fa fa-list"></i> 全部文章</a>
                </li>

                <li class="active">
                    <a href="#"><i class="fa fa-file-text"></i> 我的文章<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="chart.html">文章列表</a>
                        </li>
                        <li>
                            <a class="active-menu" href="${pageContext.request.contextPath}/url/addArticle">添加文章</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="#"><i class="fa fa-cogs"></i> 设置<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="chart.html">我的资料</a>
                        </li>
                        <li>
                            <a href="morris-chart.html">修改密码</a>
                        </li>
                    </ul>
                </li>
            </ul>

        </div>

    </nav>
    <!-- /. NAV SIDE  -->

    <div id="page-wrapper">
        <div class="header">
            <h1 class="page-header">
                添加文章 <small>欢迎光临七楼的南瓜饼子店</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="${pageContext.request.contextPath}/url/success">主页</a></li>
                <li>我的文章</li>
                <li class="active">添加文章</li>
            </ol>

        </div>
        <div id="page-inner">

            <!-- /. ROW  -->

            <div class="row">
                <div class="col-sm-12 col-xs-12">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <div class="col-sm-2"></div>
                            <div class="col-sm-8">
                                <form class="form-horizontal">
                                    <div class="form-group">
                                        <label for="title" class="col-sm-2 control-label">标题：</label>
                                        <div class="col-sm-10">
                                            <input type="text" class="form-control" id="title" placeholder="标题">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="content" class="col-sm-2 control-label">正文：</label>
                                        <div class="col-sm-10">
                                            <div id="content">
                                                <script type="text/plain" id="editor"></script>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="type" class="col-sm-2 control-label">话题：</label>
                                        <div class="col-sm-4">
                                            <select id="type" class="selectbox form-control">
                                                <option value="0" selected>--请选择--</option>
                                            </select>
                                        </div>
                                        <div class="col-sm-6">
                                            <input type="text" class="form-control" placeholder="所选话题" id="topic" readonly>
                                        </div>
                                    </div>
                                    <br>
                                    <div class="form-group">
                                        <div class="col-sm-2"></div>
                                        <div class="col-sm-8" style="text-align: center">
                                            <a onclick="saveArticle()" class="btn btn-danger" style="width: 30%">保存</a>
                                        </div>
                                        <div class="col-sm-2"></div>
                                    </div>
                                </form>
                            </div>
                            <div class="col-sm-2"></div>
                        </div>
                    </div>
                </div>
            </div>

            <footer><p>Copyright &copy; 2017.Company name All rights reserved.<a target="_blank" href="http://www.i757.com/">七楼的南瓜饼子店</a></p>


            </footer>
        </div>
        <!-- /. PAGE INNER  -->
    </div>
    <!-- /. PAGE WRAPPER  -->
</div>
<!-- /. WRAPPER  -->
<!-- JS Scripts-->
<!-- jQuery Js -->
<%--<script src="${pageContext.request.contextPath}/static/assets/js/jquery-1.10.2.js"></script>--%>
<script src="${pageContext.request.contextPath}/static/js/jquery-3.2.1.min.js"></script>
<!-- Bootstrap Js -->
<script src="${pageContext.request.contextPath}/static/assets/js/bootstrap.min.js"></script>

<!-- Metis Menu Js -->
<script src="${pageContext.request.contextPath}/static/assets/js/jquery.metisMenu.js"></script>
<!-- Morris Chart Js -->
<script src="${pageContext.request.contextPath}/static/assets/js/morris/raphael-2.1.0.min.js"></script>
<script src="${pageContext.request.contextPath}/static/assets/js/morris/morris.js"></script>


<script src="${pageContext.request.contextPath}/static/assets/js/easypiechart.js"></script>
<script src="${pageContext.request.contextPath}/static/assets/js/easypiechart-data.js"></script>

<script src="${pageContext.request.contextPath}/static/assets/js/Lightweight-Chart/jquery.chart.js"></script>
<script src="${pageContext.request.contextPath}/static/assets/js/custom-scripts.js"></script>

<script src="${pageContext.request.contextPath}/static/layer/layer.js"></script>
<script src="${pageContext.request.contextPath}/static/assets/js/select2.full.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/app.js"></script>

<!-- 配置文件 -->
<script type="text/javascript" src="${pageContext.request.contextPath}/ueditor/ueditor.config.js"></script>
<!-- 编辑器源码文件 -->
<script type="text/javascript" src="${pageContext.request.contextPath}/ueditor/ueditor.all.js"></script>

<script>

    var editor;
    $(document).ready(function() {
        topicList();
        $(".selectbox").select2();
        editor = UE.getEditor('editor',{
            initialFrameWidth:'100%',
            initialFrameHeight:500
        });
    });

    function topicList() {
        getRequest("${pageContext.request.contextPath}/topic/list",callback);
    }

    function callback(data) {
        var list = data.data.list;
        $.each(list,function (index,item) {
           $(".selectbox").append("<option value=\""+item.id+"\">"+item.name+"</option>");
        });
    }

    var topicIds = new Array();
    var topicNames = new Array();
    $(".selectbox").change(function () {
        var id = $(this).children('option:selected').val();
        if(id == 0){
            return;
        }
        var name = $(this).children('option:selected').html();
        if(topicIds.indexOf(id) != -1){
            for(var i = 0; i < topicIds.length; i++) {
                if(topicIds[i] == id) {
                    topicIds.splice(i, 1);
                    topicNames.splice(i, 1);
                    break;
                }
            }
        }else{
            if(topicIds.length >= 3){
                layer.tips("最多只能选三个","#topic");
                return;
            }
            topicIds.push(id);
            topicNames.push(name);
        }
        var str = "";
        for(var i = 0; i < topicNames.length; i++){
            if(i == 0){
                str = topicNames[0];
            }else{
                str = str + "," + topicNames[i];
            }
        }
        $("#topic").val(str);
    });
    
    function saveArticle() {
        var title = $("#title").val();
        if(!validInput(title,"title")) return;
        var content = editor.getContent();
        if(!validInput(content,"content")) return;
        if(topicIds.length == 0){
            layer.tips("请选择话题","#topic");
            return;
        }
        var article = {
            userId:localStorage.getItem("id"),
            title:title,
            content:content,
            topics2:topicIds
        };
        postRequest("${pageContext.request.contextPath}/article/save",article,function (data) {
            if(data.code){
//                alert(data.code)
            }else{
                $("body").html(data);
            }
        });
    }
</script>

</body>

</html>