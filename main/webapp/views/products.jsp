<%--
  Created by IntelliJ IDEA.
  User: This MC
  Date: 08/11/2023
  Time: 7:05 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sản phẩm</title>
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
                <form action="<%=request.getContextPath()%>/productController/findProduct" method="get">
                    <label for="productName">Product Name</label>
                    <input type="text" id="productName" name="productName" value="${productName}"
                           placeholder="Input product Name"/>
                    <input type="submit" value="Search"/>
                </form>
                <select id="sortBy" name="sortBy" onchange="changeSortBy()">
                    <option value="productId" ${sortBy.equals("productId")?'selected':''}>Product Id</option>
                    <option value="productName" ${sortBy.equals("productName")?'selected':''}>Product Name</option>
                    <option value="price" ${sortBy.equals("price")?'selected':''}>Price</option>
                </select>
                <select id="direction" name="direction" onchange="changeDirection()">
                    <option value="ASC" ${direction.equals("ASC")?'selected':''}>Ascending</option>
                    <option value="DESC" ${direction.equals("DESC")?'selected':''}>Descending</option>
                </select>
                <a href="<%=request.getContextPath()%>/productController/initCreate">Create New Product</a>
            </header>
            <main>
                <table border="1">
                    <thead>
                    <tr>
                        <th>No</th>
                        <th>Product Id</th>
                        <th>Product Name</th>
                        <th>Price</th>
                        <th>Catalog Name</th>
                        <th>Title</th>
                        <th>Description</th>
                        <th>Unit</th>
                        <th>Image</th>
                        <th>Status</th>
                        <th>Action</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:set var="stt" value="0" scope="page"/>
                    <c:forEach items="${listProducts}" var="product">
                        <c:set var="stt" value="${stt+1}" scope="page"/>
                        <tr>
                            <td>${stt}</td>
                            <td>${product.productId}</td>
                            <td>${product.productName}</td>
                            <td>${product.price}</td>
                            <td>${product.catalog.catalogName}</td>
                            <td>${product.title}</td>
                            <td>${product.description}</td>
                            <td>${product.unit}</td>
                            <td><img src="${product.image}" alt="${product.productName}" width="50" height="50"/></td>
                            <td>${product.status?"Active":"Inactive"}</td>
                            <td>
                                <a href="<%=request.getContextPath()%>/productController/initUpdate?productId=${product.productId}">Update</a>
                                <a href="<%=request.getContextPath()%>/productController//delete?productId=${product.productId}">Delete</a>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
                <c:forEach items="${listPages}" var="page">
                <a href="<%=request.getContextPath()%>/productController/findProduct?page=${page}">${page}</a>
                </c:forEach>
                <a href="<%=request.getContextPath()%>/categoriesController/findCatalog">Catalog</a>
                <a href="<%=request.getContextPath()%>/accountController/findAccount">Account</a>


                <script src="<%=request.getContextPath()%>/resources/js/product.js"></script>
</body>
</html>