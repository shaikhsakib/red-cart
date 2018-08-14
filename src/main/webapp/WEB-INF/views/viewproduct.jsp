<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
	$(document).ready(function() {
		var searchCondition = '${searchCondition}';
		$('.table').DataTable({
			"lengthMenu" : [ [ 3, 5, 7, -1 ], [ 3, 5, 7, "All" ] ],
			"oSearch" : {
				"sSearch" : searchCondition
			}
		})
	});
</script>

</head>
<body>
<c:url value="/resources/images/${product.id}.png" var="imageUrl"></c:url>
<div class="col-md-12">
<div class="col-md-3"><img src="${imageUrl}" width="200" height="280"></div>
<div class="col-md-6">
<h2>${product.productName}</h2>
<h3>${product.price}</h3>

<h3>${product.description}</h3>

<c:if  test="${product.quantity==0 }">
Out Of Stock
</c:if>

<c:if test="${product.quantity!=0 }">
<c:url value="/cart/addtocart/${product.id }" var="url"></c:url>
<form action="${url }">
Enter Units<br>
<input  type="text" name="units"><br><br>

<button type="submit" class="btn btn-success">
Add to Cart</button>
</form>
</c:if>

<c:url value="/getallproducts" var="getPro"></c:url>
<h4><a href="${getPro }">Back to Product List</a></h4>
</div>
</div>
</body>
</html>
<%@ include file="footer.jsp" %>
