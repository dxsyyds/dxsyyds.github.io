<%--
  Created by IntelliJ IDEA.
  User: 松
  Date: 2021/10/14
  Time: 15:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12">
            <div class="page-header">
                <h1>
                    <small>新增书籍</small>
                </h1>
            </div>
        </div>
    </div>
    <form action="${pageContext.request.contextPath}/book/addBooks" method="post">
        <div class="form-group">
            <label>书籍名称</label>
            <input type="text" name="bookName" class="form-control">
        </div>
        <div class="form-group">
            <label>书籍数量</label>
            <input type="text" name="bookCounts" class="form-control">
        </div>
        <div class="form-group">
            <label>书籍描述</label>
            <input type="text" name="detail" class="form-control">
        </div>
        <div class="form-group">
            <label>书籍名称</label>
            <input type="submit" class="form-control" value="添加">
        </div>
    </form>
</div>
</body>
</html>
