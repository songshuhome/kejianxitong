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
<body>
<div id="wrapper">
    <jsp:include page="/pages/back/admin/adminHeader.jsp"></jsp:include>

    <!-- 此处编写内容  -->
    <div id="page-wrapper">
        <div id="page-inner">
            <div class="col-md-12">
                <div class="col-md-6 col-md-offset-4">
                    <h1 class="h1">个人考勤查询</h1>
                </div>
                <div class="col-md-12">
                    <hr>
                </div>
            </div>
            <%--编写数据增加表单--%>
            <form action="<%=basePath%>/pages/back/AdminAbsentServlet/reg" method="post" class="form-horizontal" id="decreaseForm">
                <div class="form-group">
                    <label for="mark" class="col-md-3 control-label">学生学号:</label>
                    <div class="col-md-3">
                        <input type="text" name="mark" id="mark" class="form-control input-sm">
                    </div><br>
                    <div class="form-group">
                        <div class="col-md-5 col-md-offset-3">
                            <button type="submit" class="btn btn-success c">提交</button>
                            <button type="reset" class="btn btn-success">重置</button>
                        </div>
                    </div>
                </div>
        </form>
    </div>
</div>


<jsp:include page="/pages/back/footer.jsp"></jsp:include>
<script src="assets/js/jquery-1.10.2.js"></script>
<script src="assets/js/bootstrap.js"></script>
<script src="assets/js/jquery.metisMenu.js"></script>
<script src="assets/js/custom.js"></script>

<script type="text/javascript" src="validate/js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="validate/js/jquery.validate.min.js"></script>
<script type="text/javascript" src="validate/js/jquery.metadata.js"></script>
<script type="text/javascript" src="validate/js/additional-methods.min.js"></script>
<script type="text/javascript" src="validate/js/Message_zh_CN.js"></script>
<script type="text/javascript" src="validate/member_insert.js"></script>
<script type="text/javascript" src="validate/decrease.js"></script>
<script type="text/javascript" src="validate/increase.js"></script>


</body>
</html>
