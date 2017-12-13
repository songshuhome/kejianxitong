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
                    <li class="active"><a href="../js/client_student.html">首页</a></li>
                    <li class="dropdown"><a href="#">学院考勤情况<span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="#">本周学院考勤情况</a></li>
                            <li><a href="#">本月学院考勤情况</a></li>
                        </ul>
                    </li>
                </ul>
                <ul class="nav navbar-nav pull-right">
                    <li><a><span class="glyphicon glyphicon-user"></span><span>${name}</span>老师，您好！</a></li>
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



            <!--左侧边栏内容（个人信息）-->
            <div class="col-md-4 sidebar">
                <div class="dl-horizontal" style="margin:0px;color:grey;height:470px;background:black">
                    <h2 class="page-header" align="center" style="background:black;margin:0px;padding:10px;height:50px;">
                        <a href="client_personalWeeklyRecording.html" style="text-decoration:none;color:darkgrey;"><span class="push-left" style="margin-top:0px;">${name}</span></a>
                    </h2>
                    <li class="divider" style="color:grey"></li>
                    <div style="position:relative;align:center;">
                        <div>
                            <div class="row">
                                <div class="col-md-12 col-sm-12 col-xs-12" style="left:33px;">
                                    <a href="client_personalWeeklyRecording.html">
                                        <img class="img-responsive" src="/images/pic.jpg" style="width:300px;" >
                                    </a>
                                </div>

                                <p></p>
                                <div class="btn btn-group" align="center" style="left:35px;top:10px;">
                                    <button class="btn btn-primary btn-lg" style="position:relative;top:15px;width:300px;">课时调整，该课取消</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


            <!--主内容学生出勤信息-->
            <div class="col-md-8 main-content" style="background:white;">


                <div class="row">


                    <div class="col-md-12">

                        <h2 class="page-header" align="center">数字逻辑</h2>


                        </br>


                        <ul class="nav nav-tabs" style="background:black;color:lightgrey;">
                            <li class="active"><a href="#class1" data-toggle="tab">软件1601班</a></li>
                            <li><a href="#class2" data-toggle="tab">软件1602班</a></li>
                            <li><a href="#class3" data-toggle="tab">软件1603班</a></li>
                        </ul>
                        <!--当前课学生出勤名单-->
                        <!--到课：灰色。请假：黑色。未到：红色。-->
                        <div class="tab-content">
                            <div class="tab-pane fade in active" id="class1">
                                <p><h3 align="center">班级：软件1601班</h3></p>

                                <table class="table table-responsive table-bordered table-striped table-condensed table-hover table-radius">
                                    <tr>
                                        <th>学号</th>
                                        <th>姓名</th>
                                        <th>性别</th>
                                        <th>班级</th>
                                        <th>周缺勤率</th>
                                        <th>月缺勤率</th>
                                        <th>是否签到</th>
                                        <th>扣分情况</th>
                                    </tr>
                                    <tr style="color:grey">
                                        <td>20161000</td>
                                        <td>张三</td>
                                        <td>男</td>
                                        <td>软件1601</td>
                                        <td>0%</td>
                                        <td>0%</td>
                                        <td>到</td>
                                        <td>0</td>
                                    </tr>
                                    <tr style="color:red">
                                        <td>20161000</td>
                                        <td>张三</td>
                                        <td>男</td>
                                        <td>软件1601</td>
                                        <td>0%</td>
                                        <td>0%</td>
                                        <td>未到</td>
                                        <td>-2</td>
                                    </tr>
                                    <tr style="color:black">
                                        <td>20161000</td>
                                        <td>张三</td>
                                        <td>男</td>
                                        <td>软件1601</td>
                                        <td>0%</td>
                                        <td>0%</td>
                                        <td>请假</td>
                                        <td>0</td>
                                    </tr>
                                    <tr style="color:grey">
                                        <td>20161000</td>
                                        <td>张三</td>
                                        <td>男</td>
                                        <td>软件1601</td>
                                        <td>0%</td>
                                        <td>0%</td>
                                        <td>到</td>
                                        <td>0</td>
                                    </tr>

                                </table>

                                <h4 class="page-header" align="center">软件1601班请假名单</h4>
                                <table class="table table-responsive table-bordered table-striped table-condensed table-hover table-radius">
                                    <tr>
                                        <th>学号</th>
                                        <th>姓名</th>
                                        <th>性别</th>
                                        <th>班级</th>
                                        <th>联系方式</th>
                                        <th>请假时间</th>
                                        <th>请假原因</th>
                                        <th>是否批准</th>
                                    </tr>
                                    <tr>
                                        <td>20161000</td>
                                        <td>张三</td>
                                        <td>男</td>
                                        <td>软件1601</td>
                                        <td>123456789011</td>
                                        <td>周二上午三四节课</td>
                                        <td>身体不适，校医院看病</td>
                                        <td align="center"><button class="btn btn-primary">是</button>&nbsp;<button class="btn">否</button></td>
                                    </tr>
                                    <tr>
                                        <td>20161000</td>
                                        <td>张三</td>
                                        <td>男</td>
                                        <td>软件1601</td>
                                        <td>123456789011</td>
                                        <td>周二上午三四节课</td>
                                        <td>身体不适，校医院看病</td>
                                        <td align="center"><button class="btn btn-primary">是</button>&nbsp;<button class="btn">否</button></td>
                                    </tr>
                                    <tr>
                                        <td>20161000</td>
                                        <td>张三</td>
                                        <td>男</td>
                                        <td>软件1601</td>
                                        <td>123456789011</td>
                                        <td>周二上午三四节课</td>
                                        <td>身体不适，校医院看病</td>
                                        <td align="center"><button class="btn btn-primary">是</button>&nbsp;<button class="btn">否</button></td>
                                    </tr>
                                    <tr>
                                        <td>20161000</td>
                                        <td>张三</td>
                                        <td>男</td>
                                        <td>软件1601</td>
                                        <td>123456789011</td>
                                        <td>周二上午三四节课</td>
                                        <td>身体不适，校医院看病</td>
                                        <td align="center"><button class="btn btn-primary">是</button>&nbsp;<button class="btn">否</button></td>
                                    </tr>

                                </table>

                                </br>
                                <span class="col-md-4 col-md-offset-4"><button class="btn btn-primary">确认无误，提交该班级出勤信息</button></span>

                                </br>
                                </br>
                                </br>
                                </br>

                            </div>

                            <div class="tab-pane fade" id="class2">
                                <p><h3 class="page-header" align="center">班级：软件1602班</h3></p>

                                </br>
                                <table class="table table-responsive table-bordered table-striped table-condensed table-hover table-radius">
                                    <tr>
                                        <th>学号</th>
                                        <th>姓名</th>
                                        <th>性别</th>
                                        <th>班级</th>
                                        <th>周缺勤率</th>
                                        <th>月缺勤率</th>
                                        <th>是否签到</th>
                                        <th>扣分情况</th>
                                    </tr>
                                    <tr style="color:grey">
                                        <td>20161000</td>
                                        <td>张三</td>
                                        <td>男</td>
                                        <td>软件1601</td>
                                        <td>0%</td>
                                        <td>0%</td>
                                        <td>到</td>
                                        <td>0</td>
                                    </tr>
                                    <tr style="color:red">
                                        <td>20161000</td>
                                        <td>张三</td>
                                        <td>男</td>
                                        <td>软件1601</td>
                                        <td>0%</td>
                                        <td>0%</td>
                                        <td>未到</td>
                                        <td>-2</td>
                                    </tr>
                                    <tr style="color:black">
                                        <td>20161000</td>
                                        <td>张三</td>
                                        <td>男</td>
                                        <td>软件1601</td>
                                        <td>0%</td>
                                        <td>0%</td>
                                        <td>请假</td>
                                        <td>0</td>
                                    </tr>
                                    <tr style="color:grey">
                                        <td>20161000</td>
                                        <td>张三</td>
                                        <td>男</td>
                                        <td>软件1601</td>
                                        <td>0%</td>
                                        <td>0%</td>
                                        <td>到</td>
                                        <td>0</td>
                                    </tr>

                                </table>



                                <h3 class="page-header" align="center">请假名单</h3>
                                <table class="table table-responsive table-bordered table-striped table-condensed table-hover table-radius">
                                    <tr>
                                        <th>学号</th>
                                        <th>姓名</th>
                                        <th>性别</th>
                                        <th>班级</th>
                                        <th>联系方式</th>
                                        <th>请假时间</th>
                                        <th>请假原因</th>
                                        <th>是否批准</th>
                                    </tr>
                                    <tr>
                                        <td>20161000</td>
                                        <td>张三</td>
                                        <td>男</td>
                                        <td>软件1601</td>
                                        <td>123456789011</td>
                                        <td>周二上午三四节课</td>
                                        <td>身体不适，校医院看病</td>
                                        <td align="center"><button class="btn btn-primary">是</button>&nbsp;<button class="btn">否</button></td>
                                    </tr>
                                    <tr>
                                        <td>20161000</td>
                                        <td>张三</td>
                                        <td>男</td>
                                        <td>软件1601</td>
                                        <td>123456789011</td>
                                        <td>周二上午三四节课</td>
                                        <td>身体不适，校医院看病</td>
                                        <td align="center"><button class="btn btn-primary">是</button>&nbsp;<button class="btn">否</button></td>
                                    </tr>
                                    <tr>
                                        <td>20161000</td>
                                        <td>张三</td>
                                        <td>男</td>
                                        <td>软件1601</td>
                                        <td>123456789011</td>
                                        <td>周二上午三四节课</td>
                                        <td>身体不适，校医院看病</td>
                                        <td align="center"><button class="btn btn-primary">是</button>&nbsp;<button class="btn">否</button></td>
                                    </tr>
                                    <tr>
                                        <td>20161000</td>
                                        <td>张三</td>
                                        <td>男</td>
                                        <td>软件1601</td>
                                        <td>123456789011</td>
                                        <td>周二上午三四节课</td>
                                        <td>身体不适，校医院看病</td>
                                        <td align="center"><button class="btn btn-primary">是</button>&nbsp;<button class="btn">否</button></td>
                                    </tr>

                                </table>


                                </br>
                                <span class="col-md-4 col-md-offset-4"><button class="btn btn-primary">确认无误，提交该班级出勤信息</button></span>

                                </br>
                                </br>
                                </br>
                                </br>

                            </div>



                            <div class="tab-pane fade" id="class3">
                                <p><h3 class="page-header" align="center">班级：软件1603班</h3></p>

                                </br>
                                <table class="table table-responsive table-bordered table-striped table-condensed table-hover table-radius">
                                    <tr>
                                        <th>学号</th>
                                        <th>姓名</th>
                                        <th>性别</th>
                                        <th>班级</th>
                                        <th>周缺勤率</th>
                                        <th>月缺勤率</th>
                                        <th>是否签到</th>
                                        <th>扣分情况</th>
                                    </tr>
                                    <tr style="color:grey">
                                        <td>20161000</td>
                                        <td>张三</td>
                                        <td>男</td>
                                        <td>软件1601</td>
                                        <td>0%</td>
                                        <td>0%</td>
                                        <td>到</td>
                                        <td>0</td>
                                    </tr>
                                    <tr style="color:red">
                                        <td>20161000</td>
                                        <td>张三</td>
                                        <td>男</td>
                                        <td>软件1601</td>
                                        <td>0%</td>
                                        <td>0%</td>
                                        <td>未到</td>
                                        <td>-2</td>
                                    </tr>
                                    <tr style="color:black">
                                        <td>20161000</td>
                                        <td>张三</td>
                                        <td>男</td>
                                        <td>软件1601</td>
                                        <td>0%</td>
                                        <td>0%</td>
                                        <td>请假</td>
                                        <td>0</td>
                                    </tr>
                                    <tr style="color:grey">
                                        <td>20161000</td>
                                        <td>张三</td>
                                        <td>男</td>
                                        <td>软件1601</td>
                                        <td>0%</td>
                                        <td>0%</td>
                                        <td>到</td>
                                        <td>0</td>
                                    </tr>

                                </table>



                                <h3 class="page-header" align="center">请假名单</h3>
                                <table class="table table-responsive table-bordered table-striped table-condensed table-hover table-radius">
                                    <tr>
                                        <th>学号</th>
                                        <th>姓名</th>
                                        <th>性别</th>
                                        <th>班级</th>
                                        <th>联系方式</th>
                                        <th>请假时间</th>
                                        <th>请假原因</th>
                                        <th>是否批准</th>
                                    </tr>
                                    <tr>
                                        <td>20161000</td>
                                        <td>张三</td>
                                        <td>男</td>
                                        <td>软件1601</td>
                                        <td>123456789011</td>
                                        <td>周二上午三四节课</td>
                                        <td>身体不适，校医院看病</td>
                                        <td align="center"><button class="btn btn-primary">是</button>&nbsp;<button class="btn">否</button></td>
                                    </tr>
                                    <tr>
                                        <td>20161000</td>
                                        <td>张三</td>
                                        <td>男</td>
                                        <td>软件1601</td>
                                        <td>123456789011</td>
                                        <td>周二上午三四节课</td>
                                        <td>身体不适，校医院看病</td>
                                        <td align="center"><button class="btn btn-primary">是</button>&nbsp;<button class="btn">否</button></td>
                                    </tr>
                                    <tr>
                                        <td>20161000</td>
                                        <td>张三</td>
                                        <td>男</td>
                                        <td>软件1601</td>
                                        <td>123456789011</td>
                                        <td>周二上午三四节课</td>
                                        <td>身体不适，校医院看病</td>
                                        <td align="center"><button class="btn btn-primary">是</button>&nbsp;<button class="btn">否</button></td>
                                    </tr>
                                    <tr>
                                        <td>20161000</td>
                                        <td>张三</td>
                                        <td>男</td>
                                        <td>软件1601</td>
                                        <td>123456789011</td>
                                        <td>周二上午三四节课</td>
                                        <td>身体不适，校医院看病</td>
                                        <td align="center"><button class="btn btn-primary">是</button>&nbsp;<button class="btn">否</button></td>
                                    </tr>

                                </table>


                                </br>
                                <span class="col-md-4 col-md-offset-4"><button class="btn btn-primary">确认无误，提交该班级出勤信息</button></span>

                                </br>
                                </br>
                                </br>
                                </br>


                            </div>



                        </div>



                    </div>



                    </br>
                </div>
            </div>


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
</body>
</html>