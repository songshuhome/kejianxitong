<%@ taglib prefix="c" uri="http://www.ylcto.cn/c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <%
        String path = request.getContextPath();
        String basePath = request.getScheme() + "://"
                + request.getServerName() + ":" + request.getServerPort()
                + path + "/";
    %>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <base href="<%=basePath%>">
    <title>江农课检系统</title>
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
    <link href="assets/css/basic.css" rel="stylesheet" />
    <link href="assets/css/custom.css" rel="stylesheet" />
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
    <script type="text/JavaScript" src="http://api.map.baidu.com/api?v=2.0&ak=q0QGeu2AFgkdtlSgU2wSuAgOVHplbqGy"></script>

</head>

<body>

<!--导航-->
<nav class="navbar navbar-default navbar-inverse">
    <div class="container">
        <div class="row">
            <div class="navbar-header col-md-2">
                <a href="#"><img src="/images/logo.jpg" width="160" height="50" style="float:left"></a>
            </div>
            <div class="navbar-inner col-md-10">
                <ul class="nav navbar-nav col-md-8">
                    <li class="active"><a href="client_student.html">首页</a></li>
                    <li><a href="#">点到</a></li>
                    <li><a href="../../client_askForLeave.html">请假</a></li>
                    <li><a href="../../client_recording.html">个人考勤情况</a></li>
                </ul>
                <ul class="nav navbar-nav pull-right">
                    <li><a href="../../client_recording.html"><span class="glyphicon glyphicon-user"></span>${name}</a></li>
                </ul>
            </div>
        </div>
    </div>
</nav>

</br>
</br>
<span id="top"></span>
<!--主页面内容-->
<div class="content-wrap">
    <div class="container">

        <!--主界面内容-->
        <div class="row">

            <!--主内容课表-->
            <div class="col-md-8 main-content" style="background:white;">


                <div class="row">


                    <!--当前课-->
                    <a href="#" style="color:lightgrey;">
                        <div class="col-md-4 col-md-push-4">
                            </br>

                            <h3 align="center" class="page-header"><a href="/pages/back/StudentServlet/student">本节课信息</a></h3>
                            <c:if test="${allcourage!=null}">
                                <c:forEach items="${allcourage}" var="courage">
                                    <table class="table active text-primary  font-menu-button color-bar" >
                                        <tr bgcolor="#eee8aa " aria-setsize="6">
                                            <td >班级</td>
                                            <td>${courage.grade}</td>
                                        </tr>
                                        <tr>
                                            <td>课程</td>
                                            <td>${courage.lesson}</td>
                                        </tr>
                                        <tr>
                                            <td>日期</td>
                                            <td>${courage.date}</td>
                                        </tr>
                                        <tr>
                                            <td>地点</td>
                                            <td>${courage.site}</td>
                                        </tr>

                                        <tr>
                                            <td>老师</td>
                                            <td>${courage.teacher}</td>
                                        </tr>

                                    </table>
                                </c:forEach>
                            </c:if>
                        </div>
                    </a>

                    <div id="allmap" style="display:none"></div>
                    <!--当天课-->
                    <div class="row">
                        <div class="col-md-12">
                            <div class="col-md-3">
                                <h3 align="center" class="page-header"><a href="/pages/back/StudentLeave/courage">本周课课信息</a></h3>
                                <h4 align="center" class="page-header">Java程序设计</h4>
                                <div class="form-group">
                                    <c:if test="${allCourages != null}">
                                        <table class="table table-border">
                                            <tr>
                                                <th>课程</th>
                                                <th>日期</th>
                                                <th>地点</th>
                                                <th>老师</th>
                                            </tr>
                                                <tr>
                                                    <td>${allCourages.lesson}</td>
                                                    <td>${allCourages.date}</td>
                                                    <td>${allCourages.site}</td>
                                                    <td>${allCourages.teacher}</td>
                                                </tr>
                                        </table>
                                        <div class="col-md-5 col-md-offset-5">
                                            <jsp:include page="/pages/split_bar.jsp"></jsp:include>
                                        </div>
                                    </c:if>
                                </div>

                            </div>

                            <div class="col-md-3">

                                <h4 align="center" class="page-header">Java程序设计</h4>
                                <div class="form-group">
                                    <p>任课老师：</p>
                                    <p>上课时间：</p>
                                    <p>上课地点：</p>
                                    <p>上课对象：</p>
                                </div>

                            </div>

                            <div class="col-md-3">

                                <h4 align="center" class="page-header">Java程序设计</h4>
                                <div class="form-group">
                                    <p>任课老师：</p>
                                    <p>上课时间：</p>
                                    <p>上课地点：</p>
                                    <p>上课对象：</p>
                                </div>

                            </div>

                            <div class="col-md-3">

                                <h4 align="center" class="page-header">Java程序设计</h4>
                                <div class="form-group">
                                    <p>任课老师：</p>
                                    <p>上课时间：</p>
                                    <p>上课地点：</p>
                                    <p>上课对象：</p>
                                </div>

                            </div>


                        </div>
                    </div>
                    </br>
                </div>
            </div>
            <div id="allmap" style="display:none"></div>


            <!--右侧边栏内容（个人信息）-->
            <div class="col-md-4 sidebar">
                <div class="dl-horizontal" style="margin:0px;color:grey;height:470px;background:black">
                    <h2 class="page-header" align="center" style="background:black;margin:0px;padding:10px;height:50px;">
                        <a href="../../client_recording.html" style="text-decoration:none;color:darkgrey;"><span class="push-left" style="margin-top:0px;">${name}</span></a>
                    </h2>
                    <li class="divider" style="color:grey"></li>
                    <div style="position:relative;align:center;">
                        <div>
                            <div class="row">
                                <div class="col-md-12 col-sm-12 col-xs-12" style="left:33px;">
                                    <a href="../../client_recording.html">
                                        <img class="img-responsive" src="./images/pic.jpg" style="width:300px;" >
                                    </a>
                                </div>

                                <p></p>
                                <div class="btn btn-group" align="center" style="left:35px;top:10px;">
                                    <button class="btn btn-primary btn-lg" style="width:150px;height:75px;">点到(系统自动)</button>
                                    <a href="/pages/back/StudentLeave/leave"><button class="btn btn-default btn-lg" style="width:150px;height:75px;">请假</button></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <img src="kangjingyong" alt="" id="kjy"></div>



        </div>
    </div>


</div>


</br>
</br>
<!--底部版权标识-->
<div class="container">
    <div class="row">
        <span class="col-md-4 col-md-offset-5" style="position:relative;bottom:0px;">
            © 2003 - 2017&nbsp; - &nbsp;软件学院&nbsp; - &nbsp;<a href="login.jsp" style="color:black">江西农业大学</a>
        </span>
    </div>
</div>

</br>
<script src="assets/js/jquery-1.10.2.js"></script>
<script src="assets/js/bootstrap.js"></script>
<script src="assets/js/jquery.metisMenu.js"></script>
<script src="assets/js/custom.js"></script>
<script src="assets/js/custom.js"></script>
<script type="text/javascript">
    // 百度地图API功能
    var map = new BMap.Map("allmap");
    var point = new BMap.Point(116.331398,39.897445);
    map.centerAndZoom(point,12);

    var geolocation = new BMap.Geolocation();
    geolocation.getCurrentPosition(function(r){
        if(this.getStatus() == BMAP_STATUS_SUCCESS){
            var mk = new BMap.Marker(r.point);
            map.addOverlay(mk);
            map.panTo(r.point);
            alert('您的位置：'+r.point.lng+','+r.point.lat);
            document.getElementById("kjy").src="/pages/back/StudentLeave/sign?lng="+r.point.lng+"&lat="+r.point.lat;
        }
        else {
            alert('failed'+this.getStatus());
        }
    },{enableHighAccuracy: true})
    //关于状态码
    //BMAP_STATUS_SUCCESS	检索成功。对应数值“0”。
    //BMAP_STATUS_CITY_LIST	城市列表。对应数值“1”。
    //BMAP_STATUS_UNKNOWN_LOCATION	位置结果未知。对应数值“2”。
    //BMAP_STATUS_UNKNOWN_ROUTE	导航结果未知。对应数值“3”。
    //BMAP_STATUS_INVALID_KEY	非法密钥。对应数值“4”。
    //BMAP_STATUS_INVALID_REQUEST	非法请求。对应数值“5”。
    //BMAP_STATUS_PERMISSION_DENIED	没有权限。对应数值“6”。(自 1.1 新增)
    //BMAP_STATUS_SERVICE_UNAVAILABLE	服务不可用。对应数值“7”。(自 1.1 新增)
    //BMAP_STATUS_TIMEOUT	超时。对应数值“8”。(自 1.1 新增)
</script>



</body>
</html>