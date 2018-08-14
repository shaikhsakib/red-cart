<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="header.jsp" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:url value="/editproduct" var="edPro"></c:url>
<form:form action="${edPro}" enctype="multipart/form-data" modelAttribute="productObj">
<form:hidden path="id" />
Product Name: <form:input path="productName" /><br>
Product Description: <form:input path="description" /><br>
Price: <form:input path="price" /><br>
Quantity: <form:input path="quantity" /><br>
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

<input type="submit" value="Edit Product">
</form:form>
</body>
</html>
<%@ include file="footer.jsp" %>
