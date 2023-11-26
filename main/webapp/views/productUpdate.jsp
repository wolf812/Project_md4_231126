<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 23/11/2023
  Time: 11:26 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update Product</title>
</head>
<body>
<form action="<%=request.getContextPath()%>/productController/update" method="post">

  <input type="text" id="productId" name="productId" value="${productEdit.productId}" hidden/><br>

  <label for="productName">Product Name</label>
  <input type="text" id="productName" name="productName" value="${productEdit.productName}"/><br>

  <label for="price">Price</label>
  <input type="number" id="price" name="price" value="${productEdit.price}"/><br>

  <label for="catalog">Choice catalog</label>
  <select id="catalog" name="catalog.catalogId">
    <c:forEach items="${listCategories}" var="catalog">
      <option value="${catalog.catalogId}">${catalog.catalogName}</option>
    </c:forEach>
  </select><br>

  <label for="title">Title</label>
  <input type="text" id="title" name="title" value="${productEdit.title}"/><br>

  <label for="description">Description</label>
  <input type="text" id="description" name="description" value="${productEdit.description}"/><br>

  <label for="unit">Unit</label>
  <input type="text" id="unit" name="unit" value="${productEdit.unit}"/><br>

  <input type="file" id="productImage" name="productImage" value="productEdit.image" hidden/><br>

  <label for="active">Status</label>
  <input type="radio" id="active" name="status" value="true" ${productEdit.status?'':'checked'} /><label for="active">Active</label>
  <input type="radio" id="inactive" name="status" value="false" ${productEdit.status?'':'checked'}/><label for="inactive">Inactive</label><br>
  <input type="submit" value="Update"/>
</form>
</body>
</html>
