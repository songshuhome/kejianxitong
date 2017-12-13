
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
</head>

<body>
<!--顶部导航栏-->
<nav class="navbar navbar-default navbar-inverse">
    <div class="container">
        <div class="row">
            <div class="navbar-header col-md-2">
                <a href="#"><img src="/images/logo.jpg" width="160" height="50" style="float:left"></a>
            </div>
            <div class="navbar-inner col-md-10">
                <ul class="nav navbar-nav col-md-8">
                    <li class="active"><a href="../js/client_student.html">首页</a></li>
                    <li><a href="#">学院内考勤情况</a></li>
                    <li><a href="#">管理员名单</a></li>
                </ul>
                <ul class="nav navbar-nav pull-right">
                    <li>
                        <form class="form-inline" style="position:relative;top:13px;">
                            <input type="search" placeholder="查询学院内考勤情况">
                            <a href="pages/back/serverve_searchResult.html">
                                <span class="glyphicon glyphicon-search"></span>
                            </a>
                        </form>
                    </li>

                    <!--鼠标悬浮查看该管理员所负责的班级-->
                    <li class="dropdown"><a href="#"><span class="glyphicon glyphicon-user"></span>管理员2002302</a>
                        <ul class="dropdown-menu">
                            <li><a href="#">软件1601班</a></li>
                            <li><a href="#">软件1602班</a></li>

                        </ul>
                    </li>
                </ul>

            </div>
        </div>
    </div>
</nav>

</br>
</br>

<div style="background:white;">

    <!--主界面内容-->
    <div class="content-wrap">

        <div class="container">

            <div class="row">

                <div class="col-md-12">

                    </br>
                    </br>
                    <table class="table table-responsive table-bordered table-striped table-condensed table-hover table-radius">

                        <tr>
                            <th>学院</th>
                            <th>用户名</th>
                            <th>姓名</th>
                            <th>班级</th>
                            <th>QQ</th>
                            <th>手机号</th>
                            <th>负责班级_1</th>
                            <th>负责班级_2</th>
                            <th>负责班级_3</th>
                            <th>编辑权限</th>


                        </tr>

                        <tr>
                            <td>软件学院</td>
                            <td>2002302</td>
                            <td>张三</td>
                            <td>软件1601班</td>
                            <td>123456789</td>
                            <td>13000000000</td>
                            <td>
                                <select>
                                    <option>无</option>
                                    <option>软件1601班</option>
                                    <option>软件1602班</option>
                                    <option>软件1603班</option>
                                    <option>软件1604班</option>
                                    <option>软件1605班</option>
                                    <option>软件1606班</option>
                                    <option>软件1607班</option>
                                    <option>软件1608班</option>
                                    <option>软件1609班</option>
                                    <option>软件1610班</option>
                                    <option>软件1611班</option>
                                    <option>软件1612班</option>
                                    <option>软件1613班</option>
                                    <option>软件1614班</option>
                                    <option>物联1601班</option>
                                </select>
                            </td>
                            <td>
                                <select>
                                    <option>无</option>
                                    <option>软件1601班</option>
                                    <option>软件1602班</option>
                                    <option>软件1603班</option>
                                    <option>软件1604班</option>
                                    <option>软件1605班</option>
                                    <option>软件1606班</option>
                                    <option>软件1607班</option>
                                    <option>软件1608班</option>
                                    <option>软件1609班</option>
                                    <option>软件1610班</option>
                                    <option>软件1611班</option>
                                    <option>软件1612班</option>
                                    <option>软件1613班</option>
                                    <option>软件1614班</option>
                                    <option>物联1601班</option>
                                </select>
                            </td>
                            <td>
                                <select>
                                    <option>无</option>
                                    <option>软件1601班</option>
                                    <option>软件1602班</option>
                                    <option>软件1603班</option>
                                    <option>软件1604班</option>
                                    <option>软件1605班</option>
                                    <option>软件1606班</option>
                                    <option>软件1607班</option>
                                    <option>软件1608班</option>
                                    <option>软件1609班</option>
                                    <option>软件1610班</option>
                                    <option>软件1611班</option>
                                    <option>软件1612班</option>
                                    <option>软件1613班</option>
                                    <option>软件1614班</option>
                                    <option>物联1601班</option>
                                </select>
                            </td>
                            <td><button class="btn btn-primary" style="height:30px;">修改</button>&nbsp;<button class="btn btn-primary" style="height:30px;">删除</button></td>


                        </tr>

                        <tr>
                            <td>软件学院</td>
                            <td>2002302</td>
                            <td>张三</td>
                            <td>软件1601班</td>
                            <td>123456789</td>
                            <td>13000000000</td>
                            <td>
                                <select>
                                    <option>无</option>
                                    <option>软件1601班</option>
                                    <option>软件1602班</option>
                                    <option>软件1603班</option>
                                    <option>软件1604班</option>
                                    <option>软件1605班</option>
                                    <option>软件1606班</option>
                                    <option>软件1607班</option>
                                    <option>软件1608班</option>
                                    <option>软件1609班</option>
                                    <option>软件1610班</option>
                                    <option>软件1611班</option>
                                    <option>软件1612班</option>
                                    <option>软件1613班</option>
                                    <option>软件1614班</option>
                                    <option>物联1601班</option>
                                </select>
                            </td>
                            <td>
                                <select>
                                    <option>无</option>
                                    <option>软件1601班</option>
                                    <option>软件1602班</option>
                                    <option>软件1603班</option>
                                    <option>软件1604班</option>
                                    <option>软件1605班</option>
                                    <option>软件1606班</option>
                                    <option>软件1607班</option>
                                    <option>软件1608班</option>
                                    <option>软件1609班</option>
                                    <option>软件1610班</option>
                                    <option>软件1611班</option>
                                    <option>软件1612班</option>
                                    <option>软件1613班</option>
                                    <option>软件1614班</option>
                                    <option>物联1601班</option>
                                </select>
                            </td>
                            <td>
                                <select>
                                    <option>无</option>
                                    <option>软件1601班</option>
                                    <option>软件1602班</option>
                                    <option>软件1603班</option>
                                    <option>软件1604班</option>
                                    <option>软件1605班</option>
                                    <option>软件1606班</option>
                                    <option>软件1607班</option>
                                    <option>软件1608班</option>
                                    <option>软件1609班</option>
                                    <option>软件1610班</option>
                                    <option>软件1611班</option>
                                    <option>软件1612班</option>
                                    <option>软件1613班</option>
                                    <option>软件1614班</option>
                                    <option>物联1601班</option>
                                </select>
                            </td>
                            <td><button class="btn btn-primary" style="height:30px;">修改</button>&nbsp;<button class="btn btn-primary" style="height:30px;">删除</button></td>


                        </tr>

                        <tr>
                            <td>软件学院</td>
                            <td>2002302</td>
                            <td>张三</td>
                            <td>软件1601班</td>
                            <td>123456789</td>
                            <td>13000000000</td>
                            <td>
                                <select>
                                    <option>无</option>
                                    <option>软件1601班</option>
                                    <option>软件1602班</option>
                                    <option>软件1603班</option>
                                    <option>软件1604班</option>
                                    <option>软件1605班</option>
                                    <option>软件1606班</option>
                                    <option>软件1607班</option>
                                    <option>软件1608班</option>
                                    <option>软件1609班</option>
                                    <option>软件1610班</option>
                                    <option>软件1611班</option>
                                    <option>软件1612班</option>
                                    <option>软件1613班</option>
                                    <option>软件1614班</option>
                                    <option>物联1601班</option>
                                </select>
                            </td>
                            <td>
                                <select>
                                    <option>无</option>
                                    <option>软件1601班</option>
                                    <option>软件1602班</option>
                                    <option>软件1603班</option>
                                    <option>软件1604班</option>
                                    <option>软件1605班</option>
                                    <option>软件1606班</option>
                                    <option>软件1607班</option>
                                    <option>软件1608班</option>
                                    <option>软件1609班</option>
                                    <option>软件1610班</option>
                                    <option>软件1611班</option>
                                    <option>软件1612班</option>
                                    <option>软件1613班</option>
                                    <option>软件1614班</option>
                                    <option>物联1601班</option>
                                </select>
                            </td>
                            <td>
                                <select>
                                    <option>无</option>
                                    <option>软件1601班</option>
                                    <option>软件1602班</option>
                                    <option>软件1603班</option>
                                    <option>软件1604班</option>
                                    <option>软件1605班</option>
                                    <option>软件1606班</option>
                                    <option>软件1607班</option>
                                    <option>软件1608班</option>
                                    <option>软件1609班</option>
                                    <option>软件1610班</option>
                                    <option>软件1611班</option>
                                    <option>软件1612班</option>
                                    <option>软件1613班</option>
                                    <option>软件1614班</option>
                                    <option>物联1601班</option>
                                </select>
                            </td>
                            <td><button class="btn btn-primary" style="height:30px;">修改</button>&nbsp;<button class="btn btn-primary" style="height:30px;">删除</button></td>


                        </tr>

                    </table>

                    </br>
                    </br>
                    </br>

                    <div class="row">
                        <span class="col-md-1 col-md-offset-6">
                            <button class="btn btn-primary" align="center">添加新管理员</button>
                        </span>
                    </div>

                    </br>
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
            © 2003 - 2017&nbsp; - &nbsp;软件学院&nbsp; - &nbsp;<a href="index.html">江西农业大学</a>
        </span>
    </div>
</div>

</br>



</body>
