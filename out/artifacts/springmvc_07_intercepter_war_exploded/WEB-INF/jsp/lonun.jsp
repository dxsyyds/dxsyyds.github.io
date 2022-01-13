<%--
  Created by IntelliJ IDEA.
  User: 松
  Date: 2021/10/20
  Time: 13:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<h1>登录页面</h1>
<body>
<form action="${pageContext.request.contextPath}/lonun" method="post">
    用户名：<input type="text" name="username"/>
    密码：<input type="text" name="password"/>
    <input type="submit" value="提交">
</form>
</body>
</html>
