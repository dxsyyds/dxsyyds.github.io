<%--
  Created by IntelliJ IDEA.
  User: 松
  Date: 2021/10/18
  Time: 18:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加</title>
</head>
<body>
<h2 style="color: red">添加书籍</h2>
<form action="${pageContext.request.contextPath}/book/update" method="post">
    <input type="hidden" name="bookID" value="${Qbook.bookID}">
    <input type="text" name="bookName" value="${Qbook.bookName}"/>
    <input type="number" name="bookCounts" value="${Qbook.bookCounts}"/>
    <input type="text" name="detail" value="${Qbook.detail}"/>
    <input type="submit" value="提交"/>
    <button type="submit">提交</button>
</form>

</body>
</html>
