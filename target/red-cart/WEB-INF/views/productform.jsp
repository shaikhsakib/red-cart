<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="header.jsp" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form:form action="saveproduct" enctype="multipart/form-data" method="post" modelAttribute="product">

<form:hidden path="id" />
Enter Product Name:<form:input path="productName" /><br>
Enter Product Price:<form:input path="price" /><br>
Enter Product Quantity:<form:input path="quantity" /><br>
Enter Product Description:<form:input path="description" />
<div class="form-group">
Select Category: 
<c:forEach items="${categories }" var="c">
	<form:radiobutton path="category.id" value="${c.id }" />${c.categoryName}
</c:forEach>
</div>
<div class="form-group">
Upload an Image:
<input type="file" name="image">
</div>
<input type="submit" value="Add Product">
</form:form>
</body>
</html>
<%@ include file="footer.jsp" %>
