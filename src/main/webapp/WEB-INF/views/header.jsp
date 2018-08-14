<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
nav a{
color:#F9BF3B;
}
</style>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <c:url value="resources/css/Footer-with-social-icons.css" var="url5"></c:url>
    <c:url value="resources/css/style.css" var="url6"></c:url>
    <link rel="stylesheet" href="${url5}">
    <link rel="stylesheet" href="${url6}">
    <link rel="stylesheet" href="resources/css/freelancer.min.css">
    <link rel="stylesheet" href="resources/css/font-awesome.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!--  Datatables -->
<link rel="stylesheet" href="https://cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css">
<script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
<title>Insert title here</title>

</head>
<body>
<div  style="background-color: #34495E;">
<div class="container">
	<div class="row">
        <div class="col-sm-6 col-sm-offset-3">
            <div id="imaginary_container"> 
                <div class="input-group stylish-input-group">
                    <input type="text" class="form-control"  placeholder="Search" >
                    <span class="input-group-addon">
                        <button type="submit">
                            <span class="glyphicon glyphicon-search"></span>
                        </button>  
                    </span>
                </div>
            </div>
        </div>
	</div>
</div>
   <nav class="navbar">
		<div class="container-fluid">
		<button type="button" class="navbar-toggle collapsed" 
   data-toggle="collapse" data-target="#collapse-example" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
			<div class="navbar-header">
			<c:url value="/resources/images/logo.png" var="url5"></c:url>
	<a class="navbar-brand" href="#"><img src="${url5 }" alt="" 
	height="100px" width="170px" style="margin-top:-10px"></a>
			</div>
			<div class="collapse navbar-collapse" id="collapse-example">
			<ul class="nav navbar-nav">
			<c:url value="/home" var="url1"></c:url>
			<li class="active"><a href="${url1 }">Home<span class="sr-only">You are in home page link</span></a></li>
			<c:url value="/aboutus" var="url2"></c:url>
			<li><a href="${url2 }">About Us</a></li>
			<!--  http://localhost:8080/project1_frontend/getproductform -->
			<c:url value="/admin/getproductform" var="url3"></c:url>
			
			<li>
			<c:if test="${pageContext.request.userPrincipal.name!=null }">
			<security:authorize access="hasRole('ROLE_ADMIN')">
			  <a href="${url3 }">Add Product</a>
			  </security:authorize>
			</c:if>
			</li>
			
			<c:url value="/getallproducts" var="url4"></c:url>
			<li><a href="${url4 }">Browse All Products</a></li>
			
			<li class="dropdown">
			<a href="" class="dropdown-toggle" data-toggle="dropdown">
                     Select by Category<b class="caret"></b></a>
			<ul class="dropdown-menu">
					<li>
					<c:forEach items="${categories }" var="c">
					<c:url value="/searchbycategory?searchCondition=${c.categoryName }" var="url" ></c:url>
                <a href="${url }" >${c.categoryName } </a>
                </c:forEach>
                <c:url value="/searchbycategory?searchCondition=All" var="url1">
                </c:url>
                 <a href="${url1 }">All</a>
                </li>
			</ul>
			</li>
			
			<li>
			<c:if test="${pageContext.request.userPrincipal.name!=null }">
			<a href="">Welcome ${pageContext.request.userPrincipal.name }</a>
			</c:if>
			</li>
			
			<c:if test="${pageContext.request.userPrincipal.name==null }">
			<c:url value="/all/registrationform" var="url5"></c:url>
			<li><a href="${url5 }">Sign up</a></li>
			<c:url value="/login" var="url6"></c:url>
		    <li><a href="${url6 }">Sign In</a></li>	
		    </c:if>
		    <c:url value="/j_spring_security_logout" var="logoutUrl"></c:url>
		    <c:if test="${pageContext.request.userPrincipal.name!=null }">
		    <li><a href="${logoutUrl }">logout</a></li>
		    </c:if>
		    <li><security:authorize access="hasRole('ROLE_USER')">
         <li><a href="<c:url value="/cart/getcart"></c:url>">Cart</a></li>
         </security:authorize></li>
		    
			</ul>
			</div>
		</div>
	</nav>
	</div>
	
	<div class="box"></div>
	</body>
	</html>