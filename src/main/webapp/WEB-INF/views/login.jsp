
<%@include file="header.jsp" %>
<html>
<head>
<title>Insert title here</title>
<style>
body {
background-image: url("resources/images/loginbg.jpg");
}
#login{
border: 5px double #FFD700;
background: white;

}
input[type=text], input[type=password] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}

button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
}

button:hover {
    opacity: 0.8;
}

.cancelbtn {
    width: auto;
    padding: 10px 18px;
    background-color: #f44336;
}

.imgcontainer {
    text-align: center;
    margin: 24px 0 12px 0;
}

img.avatar {
    width: 40%;
    border-radius: 50%;
}

.container {
    padding: 16px;
}

span.psw {
    float: right;
    padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
    span.psw {
       display: block;
       float: none;
    }
    .cancelbtn {
       width: 100%;
    }
}
</style>
</head>
<body>

<div style="margin:auto;width:30%;">
<c:url value="/j_spring_security_check" var="login"></c:url>
<form id="login" action="${login }" method="post">
  <div class="imgcontainer">
    <img src="resources/images/red-bag.jpg" alt="Avatar" class="avatar">
  </div>

  <div style="padding:5%">
    <label><b>Username</b></label>
    <input type="text" placeholder="Enter Username" name="j_username" required>

    <label><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="j_password" required>
        
    <button style="background-color: #34495E;" type="submit">Login</button>

</form>
</div>
</div>
</body>
</html>