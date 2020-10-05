<%--
  Created by IntelliJ IDEA.
  User: zhushuoyuan
  Date: 2020/10/5
  Time: 19:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/" method="post">
    <select name="type">
        <option value="0">全部</option>
        <option value="3">已申报</option>
        <option value="2">审核中</option>
        <option value="1">已审核</option>
    </select>
    <input type="submit" value="确定">
</form>
<table border="1px">
    <tr align="center">
        <td colspan="6"><h2>申报项目列表</h2></td>
    </tr>
    <tr align="center">
        <td>项目编号</td>
        <td>项目名称</td>
        <td>申报开始日期</td>
        <td>申报结束日期</td>
        <td>申报状态</td>
        <td>操作</td>
    </tr>
    <c:forEach items="${pageInfo.list}" var="list">
        <tr align="center">
            <td>${list.id}</td>
            <td>${list.projectname}</td>
            <td><fmt:formatDate pattern="yyyy-MM-dd" value="${list.startdate}" type="both"/></td>
            <td><fmt:formatDate pattern="yyyy-MM-dd" value="${list.enddate}" type="both"/></td>
            <td>
                <c:if test="${list.status==1}">
                    已审核
                </c:if>
                <c:if test="${list.status==2}">
                    审核中
                </c:if>
                <c:if test="${list.status==3}">
                    已申报
                </c:if>
            </td>
            <td><a href="/cha?id=${list.id}"> <c:if test="${list.status==3}">
                审核
            </c:if>
                <c:if test="${list.status==2}">
                    审核
                </c:if>
                <c:if test="${list.status==1}">

                </c:if></a></td>
        </tr>
    </c:forEach>
    <tr>
        <td colspan="6">
            <p align="center">${update}</p>
            <div align="right">
                共${pageInfo.total}条  第${pageInfo.pageNum}/${pageInfo.pages}页
                <a href="?pageIndex=${pageInfo.firstPage}">首页</a>
                <c:if test="${pageInfo.hasPreviousPage}">
                    <a href="?pageIndex=${pageInfo.prePage}">上一页</a>
                </c:if>
                <c:forEach items="${pageInfo.navigatepageNums}" var="i">
                    <a href="?pageIndex=${i}">${i}</a>
                </c:forEach>
                <c:if test="${pageInfo.hasNextPage}">
                    <a href="?pageIndex=${pageInfo.nextPage}">下一页</a>
                </c:if>
                <a href="?pageIndex=${pageInfo.lastPage}">尾页</a>
            </div>
        </td>
    </tr>
</table>

</body>
</html>