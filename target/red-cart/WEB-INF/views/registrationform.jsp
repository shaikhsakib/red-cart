<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Insert title here</title>
   <style>
hr.style-eight {
    overflow: visible; /* For IE */
    padding: 0;
    border: none;
    border-top: medium double #333;
    color: #333;
    text-align: center;
}
hr.style-eight:after {
    content: "§";
    display: inline-block;
    position: relative;
    top: -0.7em;
    font-size: 1.5em;
    padding: 0 0.25em;
    background: white;
}
</style>
</head>
<body style="background-color:#DADFE1">

	<div  class="container">
	<c:url value="/all/savecustomer" var="svCust"></c:url>
	<form:form action="${svCust }" modelAttribute="customer" >
	
	<div>
	
	<div class="form-group ">
	<form:label path="firstname">Enter Firstname</form:label>
	<form:input class="form-control" path="firstname" />
	<form:errors path="firstname" cssStyle="color:red"></form:errors> 
	</div>
	
	<div class="form-group">
	<form:label path="lastname">Enter Lastname</form:label>
	<form:input class="form-control" path="lastname" />
	<form:errors path="lastname" cssStyle="color:red"></form:errors> 
	</div>
	
	<div class="form-group">
	<form:label path="email">Enter Email</form:label>
	<form:input class="form-control" path="email" />
	<form:errors path="email" cssStyle="color:red"></form:errors> 
	<p style="color:red">${duplicateEmail}</p>
	</div>
	
	<div class="form-group">
	<form:label path="phone">Enter Phone number</form:label>
	<form:input class="form-control" path="phone" />
	<form:errors path="phone" cssStyle="color:red"></form:errors> 
	</div>
	
	<hr class="style-eight">
	
	<div class="form-group">
	<form:label path="user.username">Enter Username</form:label>
	<form:input class="form-control" path="user.username" />
	<form:errors path="user.username" cssStyle="color:red"></form:errors> 
	<p style="color:red">${duplicateUsername}</p>
	</div>
	
	<div class="form-group">
	<form:label path="user.password">Enter Password</form:label>
	<form:input class="form-control" path="user.password" />
	<form:errors path="user.password" cssStyle="color:red"></form:errors> 
	</div>
	
	</div>
	
	
	<div>
	
	<div class="form-group">
	<form:label path="billingAddress.streetname">Enter Streetname</form:label>
	<form:input class="form-control" path="billingAddress.streetname" />
	<form:errors path="billingAddress.streetname" cssStyle="color:red"></form:errors> 
	</div>
	
	<div class="form-group">
	<form:label path="billingAddress.apartmentnumber">Enter apartmentnumber</form:label>
	<form:input  class="form-control" path="billingAddress.apartmentnumber" />
	<form:errors path="billingAddress.apartmentnumber" cssStyle="color:red"></form:errors> 
	</div>
	
	<div class="form-group">
	<form:label path="billingAddress.city">Enter City</form:label>
	<form:input class="form-control" path="billingAddress.city" />
	<form:errors path="billingAddress.city" cssStyle="color:red"></form:errors> 
	</div>
	
	<div class="form-group">
	<form:label path="billingAddress.state">Enter State</form:label>
	<form:input class="form-control" path="billingAddress.state" />
	<form:errors path="billingAddress.state" cssStyle="color:red"></form:errors> 
	</div>
	
	<div class="form-group">
	<form:label path="billingAddress.country">Enter Country</form:label>
	<form:input class="form-control" path="billingAddress.country" />
	<form:errors path="billingAddress.country" cssStyle="color:red"></form:errors> 
	</div>
	
	<div class="form-group">
	<form:label path="billingAddress.zipcode">Enter Zipcode</form:label>
	<form:input  class="form-control" path="billingAddress.zipcode" />
	<form:errors path="billingAddress.zipcode" cssStyle="color:red"></form:errors> 
	</div>
	
	</div>
	<hr class="style-eight">
	
	<div>
	
	<div class="form-group">
	<form:label path="shippingAddress.streetname">Enter Streetname</form:label>
	<form:input class="form-control" path="shippingAddress.streetname" />
	<form:errors path="shippingAddress.streetname" cssStyle="color:red"></form:errors> 
	</div>
	
	<div class="form-group">
	<form:label path="shippingAddress.apartmentnumber">Enter apartmentnumber</form:label>
	<form:input class="form-control" path="shippingAddress.apartmentnumber" />
	<form:errors path="shippingAddress.apartmentnumber" cssStyle="color:red"></form:errors> 
	</div>
	
	<div class="form-group">
	<form:label path="shippingAddress.city">Enter City</form:label>
	<form:input class="form-control" path="shippingAddress.city" />
	<form:errors path="shippingAddress.city" cssStyle="color:red"></form:errors> 
	</div>
	
	<div class="form-group">
	<form:label path="shippingAddress.state">Enter State</form:label>
	<form:input class="form-control" path="shippingAddress.state" />
	<form:errors path="shippingAddress.state" cssStyle="color:red"></form:errors> 
	</div>
	
	<div class="form-group">
	<form:label path="shippingAddress.country">Enter Country</form:label>
	<form:input class="form-control" path="shippingAddress.country" />
	<form:errors path="shippingAddress.country" cssStyle="color:red"></form:errors> 
	</div>
	
	<div class="form-group">
	<form:label path="shippingAddress.zipcode">Enter Zipcode</form:label>
	<form:input class="form-control" path="shippingAddress.zipcode" />
	<form:errors path="shippingAddress.zipcode" cssStyle="color:red"></form:errors> 
	</div>
	
	</div>
	
	<div class="form-group">
	<input type="submit" value="Register">
	</div>
	</form:form>
	</div>
</body>
</html>
<%@ include file="footer.jsp" %>

