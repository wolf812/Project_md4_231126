<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 25/11/2023
  Time: 9:02 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create New Account</title>
</head>
<body>
<form action="<%=request.getContextPath()%>/accountController/create" method="post" enctype="multipart/form-data">

    <label for="email">Email</label>
    <input type="text" id="email" name="email"/><br>

    <label for="passWord">PassWord</label>
    <input type="text" id="passWord" name="passWord"/><br>


    <label for="created">Created</label>
    <input type="datetime-local" id="created" name="created" /><br>

    <label for="permission">Permission</label>
    <input type="radio" id="permission" name="permission" checked/><label for="active">Active</label>
    <input type="radio" id="fupermission" name="permission"/><label for="inactive">Inactive</label><br>

    <label for="active">Status</label>
    <input type="radio" id="active" name="status" value="true" checked/><label for="active">Active</label>
    <input type="radio" id="inactive" name="status" value="false"/><label for="inactive">Inactive</label><br>
    <input type="submit" value="Create"/>
</form>
</body>
</html>