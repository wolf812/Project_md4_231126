<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 24/11/2023
  Time: 9:39 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Web bán hàng</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <%--    <link rel="stylesheet" href="style/home.css">--%>
    <link href="<%=request.getContextPath()%>/resources/css/home.css" rel="stylesheet"/>
    <link href="<%=request.getContextPath()%>/resources/css/icon.css" rel="stylesheet"/>
</head>

<body>
<div class="container">
    <div class="row">
        <div class="col-2">
            <aside class="aside">
<%--                <img class="logo" src="<%=request.getContextPath()%>\resources\imges\Logo.png" alt="logo">--%>
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
                <form action="<%=request.getContextPath()%>/categoriesController/findCatalog" method="get">
                    <label for="catalogName">Catalog Name</label>
                    <input type="text" id="catalogName" name="catalogName" value="${catalogName}"
                           placeholder="Input catalog Name"/>
                    <input type="submit" value="Search"/>
                </form>
                <select id="sortBy" name="sortBy" onchange="changeSortBy()">
                    <option value="catalogId" ${sortBy.equals("catalogId")?'selected':''}>Catalog Id</option>
                    <option value="catalogName" ${sortBy.equals("catalogName")?'selected':''}>Catalog Name</option>
                    <option value="price" ${sortBy.equals("price")?'selected':''}>Price</option>
                </select>
                <select id="direction" name="direction" onchange="changeDirection()">
                    <option value="ASC" ${direction.equals("ASC")?'selected':''}>Ascending</option>
                    <option value="DESC" ${direction.equals("DESC")?'selected':''}>Descending</option>
                </select>
                <a href="<%=request.getContextPath()%>/categoriesController/intCreate">Create New Catalog</a>
            </header>
            <main>
                <table border="1">
                <thead>
                    <tr>
                        <th>No</th>
                        <th>Catalog Id</th>
                        <th>Catalog Name</th>
                        <th>Created</th>
                        <th>Status</th>
                        <th>Action</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:set var="stt" value="0" scope="page"/>
                    <c:forEach items="${listCatalog}" var="catalog">
                        <c:set var="stt" value="${stt+1}" scope="page"/>
                        <tr>
                            <td>${stt}</td>
                            <td>${catalog.catalogId}</td>
                            <td>${catalog.catalogName}</td>
                            <td><fmt:formatDate value="${catalog.created}" pattern="dd/MM/yyyy"/></td>
                            <td>${catalog.status?"Active":"Inactive"}</td>
                            <td>
                                <a href="<%=request.getContextPath()%>/categoriesController/initUpdate?catalogId=${catalog.catalogId}">
                                    <img class="icon-update"
                                            src="<%=request.getContextPath()%>/resources/imges/icon-update.png"
                                            alt="update-img"
                                            srcset="<%=request.getContextPath()%>/resources/imges/icon-update.png 2x"
                                    />
                                </a>
                                <a href="<%=request.getContextPath()%>/categoriesController//delete?catalogId=${catalog.catalogId}">
                                    <img class="icon-delete"
                                            src="<%=request.getContextPath()%>/resources/imges/icon-delete.png"
                                            alt="Delete-img"
                                            srcset="<%=request.getContextPath()%>/resources/imges/icon-delete.png 2x"
                                    />
                                    </a>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
                <c:forEach items="${listPages}" var="page">
                    <a href="<%=request.getContextPath()%>/categoriesController/findCatalog?page=${page}">${page}</a>
                </c:forEach>
            </main>
        </div>

    </div>

</div>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
        crossorigin="anonymous"></script>
<script src="js/home.js"></script>
</body>

</html>
