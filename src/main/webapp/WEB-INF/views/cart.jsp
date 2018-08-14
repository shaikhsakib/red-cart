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
<div>
<c:url value="/cart/clearcart/${cart.id }" var="clear"></c:url>
<a href="${clear}" class="btn btn-danger" pull-left>
<span class="glyphicon glyphicon-remove-sign"></span>
Clear Cart
</a>
<c:url value="/cart/shippingaddressform/${cart.id}" var="order"></c:url>
<a href="${order}" class="btn btn-danger" pull-left>
<span class="glyphicon glyphicon-shopping-cart"></span>
Check Out
</a>

<table class="table table-striped">
<thead>
<tr>
<th>Name</th><th>Quantity</th><th>Total Price</th><th>Remove</th>
</tr>
</thead>
<c:set var="grandTotal" value="0"></c:set>
<c:forEach items="${cart.cartItems}" var="cartItem">
<tr>
<td>${cartItem.product.productName}</td>
<td>${cartItem.quantity}</td>
<td>${cartItem.totalPrice}</td>


<c:url value="/cart/removecartitem/${cartItem.cartItemId }" var="remove"></c:url>
<td>
<a href="${remove}" class="label label-danger" pull-left>
<c:set var="grandTotal" value="${cartItem.totalPrice + grandTotal }"></c:set>
<span class="glyphicon glyphicon-remove"></span>
Remove
</td>
</a>
<td></td>
</tr>
</c:forEach>
</table>
Total Price: ${grandTotal }
</div>
</body>
</html>