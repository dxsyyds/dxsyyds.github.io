<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 松
  Date: 2021/10/17
  Time: 15:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>全部书籍</title>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
    <div class="jumbotron">
        <h1>全部书籍</h1>
        <p><a class="btn btn-primary btn-lg" href="${pageContext.request.contextPath}/index.jsp">
            返回首页</a>
            <a class="btn btn-primary btn-lg" href="${pageContext.request.contextPath}/book/toaddbook">
                添加书籍</a>
        <form action="${pageContext.request.contextPath}/book/cxBook" method="post">
        <input type="" name="cxBook" required="required"/>
        <input type="submit" value="查询">
        ${sb}
    </form>

        </p>
    </div>
    <div>
        <table>
            <thead>
            <tr>
                <td>书籍编号</td>
                <td>书籍名称</td>
                <td>书籍数量</td>
                <td>书籍介绍</td>
                <td>操作</td>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${list}" var="book">
                <tr>
                    <td>${book.bookID}</td>
                    <td>${book.bookName}</td>
                    <td>${book.bookCounts}</td>
                    <td>${book.detail}</td>
                    <td>
                        <a href="${pageContext.request.contextPath}/book/ToUpdate?id=${book.bookID}">修改</a>
                        <a href="${pageContext.request.contextPath}/book/delateBook?id=${book.bookID}">删除</a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>

</body>
</html>

