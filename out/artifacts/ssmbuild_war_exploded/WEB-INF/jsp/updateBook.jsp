<%--
  Created by IntelliJ IDEA.
  User: 松
  Date: 2021/10/14
  Time: 23:19
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
          <small>修改书籍</small>
        </h1>
      </div>
    </div>
  </div>
  <form action="${pageContext.request.contextPath}/book/updateBook" method="post">
    <%--前端传递隐藏域--%>
    <input type="hidden" name="bookID" value="${Qbook.bookID}">
    <div class="form-group">
      <label>书籍名称</label>
      <input type="text" name="bookName" value="${Qbook.bookName}" class="form-control">
    </div>
    <div class="form-group">
      <label>书籍数量</label>
      <input type="text" name="bookCounts" value="${Qbook.bookCounts}" class="form-control">
    </div>
    <div class="form-group">
      <label>书籍描述</label>
      <input type="text" name="detail" value="${Qbook.detail}" class="form-control">
    </div>
    <div class="form-group">
      <label>书籍名称</label>
      <input type="submit" class="form-control" value="修改">
    </div>
  </form>
</div>
</body>
</html>
