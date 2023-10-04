
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="bootstrap.jsp" %>
</head>
<body>
<div style="padding-left: 40px; padding-top: 30px">

<h1 style="margin-bottom: 30px">Login Page</h1>

<form action="customer.jsp">

  <div class="mb-3">
 
    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="login id" style="width:350px;">
   
  </div>
  <div class="mb-3">
 
    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="password" style="width:350px;">
  </div>
 
  <button type="submit" class="btn btn-primary">Submit</button>
</form>
</div>
</body>
</html>