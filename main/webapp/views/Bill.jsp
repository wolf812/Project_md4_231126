<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 26/11/2023
  Time: 9:14 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quản lý bill</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <%--    <link rel="stylesheet" href="style/home.css">--%>
    <link href="<%=request.getContextPath()%>/resources/css/home.css" rel="stylesheet"/>


</head>

<body>
<div class="container">
    <div class="row">
        <div class="col-2">
            <aside class="aside">
                <img class="logo" src="D:\MD_ 4\Project-modun4\src\main\java\com\imges\logo.png" alt="logo">
                <p>WEB bán hàng</p>
                <hr/>
                <nav class="nav-home">
                    <ul class="nav flex-column">
                        <li class="nav-item">
                            <!-- <img src="img/home-2.png" alt="icon"> -->
                            <a class="nav-link" href="">Bảng điều khiển</a>
                        </li>
                        <li class="nav-item">
                            <!-- <img src="img/home-2.png" alt="icon"> -->
                            <a class="nav-link" href="<%=request.getContextPath()%>/categoriesController/findCatalog">Quản
                                lý danh mục</a>
                        </li>
                        <li class="nav-item">
                            <!-- <img src="img/teacher.png" alt="icon"> -->
                            <a class="nav-link" href="<%=request.getContextPath()%>/productController/findProduct">Quản
                                lý sản phẩm</a>

                        </li>
                        <li class="nav-item">
                            <!-- <img src="img/chart-square.png" alt="icon"> -->
                            <a class="nav-link" href="<%=request.getContextPath()%>/accountController/findAccount">Quản
                                lý tài khoản</a>

                        </li>
                    </ul>
                </nav>
            </aside>
        </div>
        <div class="col-10">
            <header>
                <form action="<%=request.getContextPath()%>/accountController/findAccount" method="get">
                    <label for="email">Email</label>
                    <input type="text" id="email" name="email" value="${email}" placeholder="Input email"/>
                    <input type="submit" value="Search"/>
                </form>
                <select id="sortBy" name="sortBy" onchange="changeSortBy()">
                    <option value="accId" ${sortBy.equals("accId")?'selected':''}>Account ID</option>
                    <option value="email" ${sortBy.equals("email")?'selected':''}>Email</option>
                    <option value="created" ${sortBy.equals("created")?'selected':''}>Created</option>
                </select>
                <select id="direction" name="direction" onchange="changeDirection()">
                    <option value="ASC" ${direction.equals("ASC")?'selected':''}>Ascending</option>
                    <option value="DESC" ${direction.equals("DESC")?'selected':''}>Descending</option>
                </select>
                <a href="<%=request.getContextPath()%>/accountController/intCreate">Create New Account</a>
            </header>
            <main>
                <table border="1">
                    <thead>
                    <tr>
<%--                        this.billId = billId;--%>
<%--                        this.account = account;--%>
<%--                        this.created = created;--%>
<%--                        this.status = status;--%>
                        <th>No</th>
                        <th>account</th>
                        <th>created</th>
                        <th>Created</th>
                        <th>Status</th>
                        <th>Action</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:set var="stt" value="0" scope="page"/>
                    <c:forEach items="${accountList}" var="account">
                        <c:set var="stt" value="${stt+1}" scope="page"/>
                        <tr>
                            <td>${stt}</td>
                            <td>${account.accId}</td>
                            <td>${account.email}</td>
                            <td><fmt:formatDate value="${account.created}" pattern="dd/MM/yyyy"/></td>
                            <td>${account.passWord}</td>
                            <td>${account.permission}</td>
                            <td>${account.status?"Active":"Inactive"}</td>
                            <td>
                                <a href="<%=request.getContextPath()%>/accountController/initUpdate?accId=${account.accId}">Update</a>
                                <a href="<%=request.getContextPath()%>/accountController//delete?accId=${account.accId}">Delete</a>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
                <c:forEach items="${listPages}" var="page">
                <a href="<%=request.getContextPath()%>/categoriesController/findCatalog?page=${page}">${page}</a>
                </c:forEach>
                <script src="<%=request.getContextPath()%>/resources/js/categories.js"></script>
</body>
</html>