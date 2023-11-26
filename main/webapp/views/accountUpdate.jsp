<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 25/11/2023
  Time: 9:03 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update Account </title>
</head>
<body>
<form action="<%=request.getContextPath()%>/accountController/update" method="post">

    <input type="text" id="accId" name="accId" value="${accountEdit.accId}" hidden/><br>

<%--    <label for="email">Email</label>--%>
    <input type="text" id="email" name="email" value="${accountEdit.email}" hidden/><br>

    <label for="created">Created</label>
    <input type="datetime-local" id="created" name="created" value="${accountEdit.created}"/><br>
    <label for="passWord">Pass Word</label>
    <input type="text" id="passWord" name="passWord" value="${accountEdit.passWord}"/><br>

    <label for="permission">Permission</label>
    <input type="text" id="permission" name="permission" value="${accountEdit.permission}"/><br>

    <label for="active">Status</label>
    <input type="radio" id="active" name="status" value="true" ${accountEdit.status?'':'checked'} /><label for="active">Active</label>
    <input type="radio" id="inactive" name="status" value="false" ${accountEdit.status?'':'checked'}/><label for="inactive">Inactive</label><br>
    <input type="submit" value="Update"/>
</form>
</body>
</html>

