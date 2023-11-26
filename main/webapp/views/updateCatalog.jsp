<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 24/11/2023
  Time: 12:35 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update Catalog</title>
</head>
<body>
<form action="<%=request.getContextPath()%>/categoriesController/update" method="post">
    <input type="text" id="catalogId" name="catalogId" value="${catalogEdit.catalogId}" hidden/><br>
    <label for="catalogName">Catalog Name</label>
    <input type="text" id="catalogName" name="catalogName" value="${catalogEdit.catalogName}"/><br>

    <label for="created">Created</label>
    <input type="datetime-local" id="created" name="created" value="${catalogEdit.created}"/><br>


    <label for="active">Status</label>
    <input type="radio" id="active" name="status" value="true" ${productEdit.status?'':'checked'} /><label for="active">Active</label>
    <input type="radio" id="inactive" name="status" value="false" ${productEdit.status?'':'checked'}/><label for="inactive">Inactive</label><br>
    <input type="submit" value="Update"/>
</form>
</body>
</html>
