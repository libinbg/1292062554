<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'shenqingfabuxitong.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">  
  <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
  <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  </head>
  
  <body>
    <div class="container">
<div class="row">
<div class="col-sm-12">
<table class="table table-bordered table-hover table-condensed ">
                    <caption>发布申请信息
                  <a href="#" class="btn btn-success btn-sm"> <span class="glypicon glypicon-pencil">新增</span></a>
                  <a href="#" class="btn btn-success btn-sm"> <span class="glypicon glypicon-pencil">修改</span></a>
                  <a href="#" class="btn btn-success btn-sm"> <span class="glypicon glypicon-pencil">删除</span></a>
                  <a href="#" class="btn btn-success btn-sm"> <span class="glypicon glypicon-pencil">打印</span></a>   
                    </caption>
                    <thead>
                    <tr class="success ">
                    <th></th>
                    <th class="text-center">选择</th>
                    <th class="text-center">发布时间</th>
                    <th class="text-center">发布人员</th>
                    <th class="text-center">标题</th>
                    <th class="text-center">消息内容</th>
                    </tr>
                    </thead>
                    <tbody>
                    </tbody>
                    </table>
</div>
</div>
</div>
  </body>
</html>
