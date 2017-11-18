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
                    <a class="active-menu" href="index.html"><i class="fa fa-list"></i> 全部文章</a>
                </li>

                <li>
                    <a href="#"><i class="fa fa-file-text"></i> 我的文章<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="chart.html">文章列表</a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath}/url/addArticle">添加文章</a>
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
                全部文章 <small>欢迎光临七楼的南瓜饼子店</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="#">主页</a></li>
                <li><a href="#">全部文章</a></li>
                <li class="active">列表</li>
            </ol>

        </div>
        <div id="page-inner">

            <!-- /. ROW  -->

            <div class="row">
                <div class="col-sm-12 col-xs-12">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <ul class="nav nav-tabs">
                                <li class="active"><a href="#create" data-toggle="tab" onclick="createDate()">创建时间</a>
                                </li>
                                <li class=""><a href="#assent" data-toggle="tab" onclick="assentNum()">赞成数</a>
                                </li>
                                <li class=""><a href="#against" data-toggle="tab" onclick="againstNum()">反对数</a>
                                </li>
                            </ul>
                            <br>
                            <div class="tab-content">
                                <div class="tab-pane fade active in" id="create">
                                    <div class="row">
                                        <div class="col-md-4 col-sm-4">
                                            <div class="panel panel-default">
                                                <div class="panel-heading">
                                                    <span class="col-sm-8 span">
                                                        <a href="">
                                                            Default PanelDefault PanelDefault PanelDefault PanelDefault PanelDefault PanelDefault PanelDefault PanelDefault PanelDefault PanelDefault PanelDefault PanelDefault PanelDefault PanelDefault PanelDefault PanelDefault Panel
                                                        </a>
                                                    </span>
                                                    <span class="col-sm-4" style="text-align: right">
                                                        2017-11-11
                                                    </span>
                                                </div>
                                                <div class="panel-body title">
                                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum tincidunt est vitae ultrices accumsan. Aliquam ornare lacus adipiscing, posuere lectus et, fringilla augue.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum tincidunt est vitae ultrices accumsan. Aliquam ornare lacus adipiscing, posuere lectus et, fringilla augue.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum tincidunt est vitae ultrices accumsan. Aliquam ornare lacus adipiscing, posuere lectus et, fringilla augue.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum tincidunt est vitae ultrices accumsan. Aliquam ornare lacus adipiscing, posuere lectus et, fringilla augue.</p>
                                                </div>
                                                <div class="panel-footer">
                                                    <span class="col-sm-3 span">
                                                        <i class="fa fa-user"></i>
                                                        七楼的南瓜饼子店
                                                    </span>
                                                    <span class="col-sm-3 span">
                                                        <i class="fa fa-comments"></i>
                                                        100条评论
                                                    </span>
                                                    <span class="col-sm-3 span">
                                                        <i class="fa fa-frown-o"></i>
                                                        50人反对
                                                    </span>
                                                    <span class="col-sm-3 span" style="text-align: right">
                                                        <i class="fa fa-smile-o"></i>
                                                        100人赞成
                                                    </span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="assent">
                                    <h4>Profile Tab</h4>
                                    <p id="aaa">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                                </div>
                                <div class="tab-pane fade" id="against">
                                    <h4>Messages Tab</h4>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                                </div>
                            </div>
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
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/app.js"></script>

<script>
    var page = 1;
    var orderBy = "createDate";
    var sort = "desc";
    $(document).ready(function () {
        //createDate();
    });
    function showList(list,id) {
        if(list.length > 0){
            $.each(list,function (index,item) {
                if(list.length % (index + 1) == 0){
                    $("#"+id).append("<div id=\""+id+""+index+"\" class=\"row\"></div>");
                }else{
                    $("#"+id+""+index).append("<div class=\"col-md-4 col-sm-4\"><div class=\""+className()+"\"><div class=\"panel-heading\">" +
                        "<span class=\"col-sm-8 span\"><a href=\"#\" title=\""+item.title+"\">"+item.title+"</a></span>" +
                        "<span class=\"col-sm-4\" style=\"text-align: right\">"+dateFormat(item.createDate)+"</span></div>" +
                        "<div class=\"panel-body title\"><p>"+item.content+"</p></div><div class=\"panel-footer\">" +
                        "<span class=\"col-sm-3 span\" title=\""+item.nickname+"\"><i class=\"fa fa-user\"></i>"+item.nickname+"</span>" +
                        "<span class=\"col-sm-3 span\" title=\""+item.commentNum+"条评论\"><i class=\"fa fa-comments\"></i>"+item.commentNum+"条评论</span>" +
                        "<span class=\"col-sm-3 span\" title=\""+item.againstNum+"人反对\"><i class=\"fa fa-frown-o\"></i>"+item.againstNum+"人反对</span>" +
                        "<span class=\"col-sm-3 span\" title=\""+item.assentNum+"人支持\"><i class=\"fa fa-smile-o\"></i>"+item.assentNum+"人支持</span>");
                }
            });
        }else{
            $("#"+id).html("没有数据");
        }
    }
    function callback(data) {
        if(data.code){
            var list = data.data.list;
            showList(list,"create");
        }else{
            $("body").html(data);
        }
    }
    function createDate() {
        //getRequest("${pageContext.request.contextPath}/article/list/"+page+"/"+orderBy+"/"+sort,callback)
    }
    function assentNum() {

    }
    function againstNum() {

    }
</script>

</body>

</html>