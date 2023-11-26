<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 25/11/2023
  Time: 10:24 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <link href="<%=request.getContextPath()%>/resources/css/login.css" rel="stylesheet"/>

</head>

<body>
<%--id="form-login" method="POST" action="<%=request.getContextPath()%>/loginController/checkLogin" enctype="application/json--%>
<form id="" method="post" action="<%=request.getContextPath()%>/loginController/checkLogin" enctype="application/json">
    <div class="container">
        <div class="tieu-de">
            <h3>Đăng Nhập</h3>
        </div>
        <div class="content">
            <div class="mb-3 row">
                <label for="email" class="col-sm-2 col-form-label">Email</label>
                <div class="">
                    <input type="email" id="email" name="email" class="form-control" value="">
                </div>
            </div>
            <div class="mb-3 row">
                <label for="passWord" class="col-sm-2 col-form-label">Password</label>
                <div class="">
                    <input type="password" class="form-control" name="passWord" id="passWord">
                </div>
            </div>
            <button type="submit" id="btnSubmit" class="btn btn-primary">Đăng nhập</button>
        </div>
    </div>
</form>

<script src="js/login.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
        crossorigin="anonymous"></script>

</body>

</html>