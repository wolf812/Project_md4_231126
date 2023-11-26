<%--
  Created by IntelliJ IDEA.
  User: dinht
  Date: 11/21/2023
  Time: 8:11 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create New Catalog</title>
</head>
<body>
<form action="<%=request.getContextPath()%>/categoriesController/create" method="post" enctype="multipart/form-data">
    <label for="catalogName">Catalog Name</label>
    <input type="text" id="catalogName" name="catalogName"/><br>
    <label for="created">Created</label>
    <input type="datetime-local" id="created" name="created" /><br>

    <label for="active">Status</label>
    <input type="radio" id="active" name="status" value="true" checked/><label for="active">Active</label>
    <input type="radio" id="inactive" name="status" value="false" /><label for="inactive">Inactive</label><br>
    <input type="submit" value="Create"/>
</form>
</body>
</html>
