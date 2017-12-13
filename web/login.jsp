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

</head>
<body style="background:rgb(235,235,235);">
<div class="container">
    <form id="loginForm" action="/pages/back/DAOServlet/reg" method="post"  class="form-horizontal row">
        <div class="control-group">
            <div class="col-lg-4 col-md-4 col-xm-3 col-sx-3 col-md-offset-4" style="background:white;height:320px;">
                <h3 class="page-header" align="center">登录</h3>
                <div class="col-md-offset-1">
                    <div class="form-group form-inline">
                        <label class="control-label">用&nbsp;户&nbsp;名&nbsp;&nbsp;&nbsp;</label>
                        &nbsp;<span class="glyphicon glyphicon-user"></span>
                        <input type="text"  name="aid" class="form-control input-block-level" value="" placeholder="输入8位数学号（不带60）">
                    </div>
                    </br>
                    <div class="form-group form-inline">
                        <label class="control-label">密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码&nbsp;&nbsp;&nbsp;</label>
                        &nbsp;<span class="glyphicon glyphicon-lock"></span><input type="password" name="password" value="" class="form-control input-block-level">
                    </div>
                    </br>
                    <span class="pull-right"><a href="#">忘记密码？</a></span>
                </div>
                </br>
                <div class="text-center">
                    <a href="../js/client_student.html"><button class="btn btn-success">登录</button></a>
                    &nbsp;&nbsp;
                    <a href="client_teacher.html"><button class="btn btn-primary">注册</button></a>
                    </br>
                </div>
            </div>
        </div>
    </form>
    <img src="kangjingyong" alt="" id="kjy"></div>
<script type="text/javascript">
    document.getElementById("kjy").src="/pages/back/StudentServlet/student";
</script>

</div>

</br>
</br>
<!--底部版权标识-->
<div class="container">
    <div class="row">
        <span class="col-md-4 col-md-offset-4" style="position:absolute;bottom:20px;">
            © 2003 - 2017&nbsp; - &nbsp;软件学院&nbsp; - &nbsp;<a href="login.jsp" style="color:black;text-decoration:none;">江西农业大学</a>
        </span>
    </div>
</div>

</br>
</br>
</body>
