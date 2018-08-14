<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

    <%@ include file="header.jsp" %>
<html>
<head>
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
<div class="container">
<table class="table table-striped">
<thead>
<tr><th>Product name</th><th>Price</th><th>Action</th><th>Category</th></tr>
</thead>
<tbody>
<c:forEach items="${products}" var="p">
<c:url value="/resources/images/${p.id}.png" var="imageUrl"></c:url>
<c:url value="/viewproduct/${p.id}" var="viewUrl"></c:url>
<c:url value="/deleteproduct/${p.id}" var="deleteUrl"></c:url>
<tr><td>
<img src="${imageUrl}" width="50" height="50">
<a href="${viewUrl }">${p.productName}</a></td><td>${p.price}</td>

<td>
<a href="${viewUrl }"><span class="glyphicon glyphicon-info-sign"></span></a>
<security:authorize access="hasRole('ROLE_ADMIN')">
<a href="${deleteUrl }"><span class="glyphicon glyphicon-trash"></span></a>
<c:url value="/geteditform/${p.id}" var="editUrl"></c:url>
<a href="${editUrl }"><span class="glyphicon glyphicon-pencil"></span></a>
</security:authorize>
</td>
<td>${p.category.categoryName}</td>
</tr>
</c:forEach>
</tbody>
</table>
</div>
</body>
</html>
<%@ include file="footer.jsp" %>
