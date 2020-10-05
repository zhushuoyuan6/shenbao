<%--
  Created by IntelliJ IDEA.
  User: zhushuoyuan
  Date: 2020/10/5
  Time: 19:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/upd" method="post">
    <table border="1px" style="width:500px;height:200px">
        <tr>
            <td colspan="2" align="center">申报项目信息</td>
        </tr>

        <tr>
            <td align="center" style="background-color:#D896D9">项目编号</td>
            <td><input type="text" name="id" value="${cha.id}"/></td>
        </tr>
        <tr>
            <td align="center" style="background-color:#D896D9">项目名称</td>
            <td><input type="text" name="projectname" value="${cha.projectname}"/></td>
        </tr>
        <tr>
            <td align="center" style="background-color:#D896D9">申报开始日期</td>
            <td><input type="text" name="startdate" value="<fmt:formatDate pattern="yyyy-MM-dd" value="${cha.startdate}" type="both"/>"/></td>
        </tr>
        <tr>
            <td align="center" style="background-color:#D896D9">申报结束日期</td>
            <td><input type="text" name="enddate" value="<fmt:formatDate pattern="yyyy-MM-dd" value="${cha.enddate}" type="both"/>" /></td>
        </tr>
        <tr>
            <td align="center" style="background-color:#D896D9">申报状态</td>
            <td>
                <select name="status">
                    <c:if test="${cha.status==3}">
                        <option value="2"> 审核中</option>
                        <option value="1"> 已审核</option>
                    </c:if>
                    <c:if test="${cha.status==2}">
                        <option value="1">  已审核</option>
                        <option value="2">  审核中</option>
                    </c:if>
                    <c:if test="${cha.status==1}">
                        <option value="2">  审核中</option>
                        <option value="3"> 已申报</option>
                    </c:if>

                </select>
            </td>
        </tr>
        <tr>
            <td  align="center" colspan="2"><input type="submit" value="审核"/>
                <input type="submit" value="返回"/></td>
        </tr>
    </table>
</form>
<script type="text/javascript">
    $("form").submit(function(){
        var id=$("[name='id']").val();
        if(id==""){
            alert("项目编号不能为空！");
            return false;
        }
        var name=$("[name='name']").val();
        if(name==""){
            alert("项目名称不能为空！");
            return false;
        }
        var kaishi=$("[name='kaishi']").val();
        if(kaishi==""){
            alert("申报开始日期不能为空！");
            return false;
        }
        var jieshu=$("[name='jieshu']").val();
        if(jieshu==""){
            alert("项目结束日期不能为空！");
            return false;
</script>
</body>
</html>
