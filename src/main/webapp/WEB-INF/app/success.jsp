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

    <jsp:include page="../../nav.jsp"/>
    <%--<%@include file="../../nav.jsp"%>--%>

    <div id="page-wrapper">
        <div class="header">
            <h1 class="page-header">
                全部文章 <small>欢迎光临七楼的南瓜饼子店</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="${pageContext.request.contextPath}/url/success">主页</a></li>
                <li><a href="${pageContext.request.contextPath}/url/success">全部文章</a></li>
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
                                </div>
                                <div class="tab-pane fade" id="assent">
                                </div>
                                <div class="tab-pane fade" id="against">
                                </div>
                            </div>
                            <div class="col-sm-2"></div>
                            <div class="col-sm-8" style="text-align: center">
                                <div id="page" class="page_div"></div>
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
<%--<script type="text/javascript" src="${pageContext.request.contextPath}/static/assets/js/jquery-1.10.2.js"></script>--%>
<script src="${pageContext.request.contextPath}/static/js/jquery-3.2.1.min.js"></script>
<!-- Bootstrap Js -->
<script type="text/javascript" src="${pageContext.request.contextPath}/static/assets/js/bootstrap.min.js"></script>

<!-- Metis Menu Js -->
<script type="text/javascript" src="${pageContext.request.contextPath}/static/assets/js/jquery.metisMenu.js"></script>
<!-- Morris Chart Js -->
<script type="text/javascript" src="${pageContext.request.contextPath}/static/assets/js/morris/raphael-2.1.0.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/assets/js/morris/morris.js"></script>


<script type="text/javascript" src="${pageContext.request.contextPath}/static/assets/js/easypiechart.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/assets/js/easypiechart-data.js"></script>

<script type="text/javascript" src="${pageContext.request.contextPath}/static/assets/js/Lightweight-Chart/jquery.chart.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/assets/js/custom-scripts.js"></script>

<script type="text/javascript" src="${pageContext.request.contextPath}/static/layer/layer.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/app.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/paging.js"></script>

<script>
    var page = 1;
    var orderBy = "createDate";
    var sort = "desc";
    $(document).ready(function () {
        createDate();
    });
    function showList(list,id) {
        $("#"+id).html("");
        if(list.length > 0){
            var idIndex = 0;
            $.each(list,function (index,item) {
                if(index == 0 || (index % 3) == 0){
                    idIndex = index;
                    $("#"+id).append("<div id=\""+id+""+idIndex+"\" class=\"row\"></div>");
                }
                $("#"+id+""+idIndex).append("<div class=\"col-md-4 col-sm-4\"><div class=\""+className()+"\"><div class=\"panel-heading\">" +
                        "<span class=\"col-sm-8 span\"><a href=\"#\" title=\""+item.title+"\">"+item.title+"</a></span>" +
                        "<span class=\"col-sm-4 span\" style=\"text-align: right\" title=\""+dateFormat(item.createDate)+"\">"+dateFormat(item.createDate)+"</span></div>" +
                        "<div class=\"panel-body title\"><p>"+item.content+"</p></div><div class=\"panel-footer\">" +
                        "<span class=\"col-sm-3 span\" title=\""+item.user.nickname+"\"><i class=\"fa fa-user\"></i>"+item.user.nickname+"</span>" +
                        "<span class=\"col-sm-3 span\" title=\""+item.commentNum+"条评论\"><i class=\"fa fa-comments\"></i>"+item.commentNum+"条评论</span>" +
                        "<span class=\"col-sm-3 span\" title=\""+item.againstNum+"人反对\"><i class=\"fa fa-frown-o\"></i>"+item.againstNum+"人反对</span>" +
                        "<span class=\"col-sm-3 span\" title=\""+item.assentNum+"人支持\"><i class=\"fa fa-smile-o\"></i>"+item.assentNum+"人支持</span>");
            });
        }else{
            $("#"+id).html("没有数据");
        }
    }

    function callback1(data) {
        if(data.code){
            var list = data.data.list;
            showList(list,"create");
            $("#page").paging({
                pageNo: page,
                totalPage: data.data.pageCount,
                totalSize: data.data.totalNum,
                callback: function(num) {
                    page = num;
                    createDate();
                }
            });
        }else{
            $("body").html(data);
        }
    }
    function callback2(data) {
        if(data.code){
            var list = data.data.list;
            showList(list,"assent");
            $("#page").paging({
                pageNo: page,
                totalPage: data.data.pageCount,
                totalSize: data.data.totalNum,
                callback: function(num) {
                    page = num;
                    assentNum();
                }
            });
        }else{
            $("body").html(data);
        }
    }
    function callback3(data) {
        if(data.code){
            var list = data.data.list;
            showList(list,"against");
            $("#page").paging({
                pageNo: page,
                totalPage: data.data.pageCount,
                totalSize: data.data.totalNum,
                callback: function(num) {
                    page = num;
                    againstNum();
                }
            });
        }else{
            $("body").html(data);
        }
    }
    function createDate() {
        orderBy = "createDate";
        getRequest("${pageContext.request.contextPath}/article/list/"+page+"/"+orderBy+"/"+sort,callback1);
    }
    function assentNum() {
        orderBy = "assent";
        getRequest("${pageContext.request.contextPath}/article/list/"+page+"/"+orderBy+"/"+sort,callback2);
    }
    function againstNum() {
        orderBy = "against";
        getRequest("${pageContext.request.contextPath}/article/list/"+page+"/"+orderBy+"/"+sort,callback3);
    }
</script>

</body>

</html>