<%--
  Created by IntelliJ IDEA.
  User: 松
  Date: 2021/10/18
  Time: 15:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加</title>
</head>
<body>
<h2 style="color: red">添加书籍</h2>
<form action="${pageContext.request.contextPath}/book/addbook" method="post">
    <input type="text" name="bookName" placeholder="请输入书名"/>
    <input type="number" name="bookCounts" placeholder="请输入数量"/>
    <input type="text" name="detail" placeholder="详情"/>
    <input type="submit" value="提交"/>
    <button type="submit">提交</button>
</form>

</body>
</html>
