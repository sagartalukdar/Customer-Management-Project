<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<%@include file="bootstrap.jsp" %>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@include file="navbar.jsp" %>

<div class="container p-4">
<div class="row">
<div class="col-md-6 offset-md-3">
<div class="card">
<div class="card-body">
<p class="fs-3 text-center">Add Customer</p>

<c:if test="${not empty sucmsg }">
<p class="text-center text-success">${sucmsg }</p>
<c:remove var="sucmsg"/>
</c:if>

<c:if test="${not empty errmsg }">
<p class="text-center text-success">${errmsg}</p>
<c:remove var="errmsg"/>
</c:if>

<form action="register" method="post">
 <div class="mb-3">
    <label for="exampleInputFullName" class="form-label">Firstname</label>
    <input type="text" class="form-control" id="exampleInputFisrtname" name="firstname">
  </div>
   <div class="mb-3">
    <label for="exampleInputLastName" class="form-label">Lastname</label>
    <input type="text" class="form-control" id="exampleInputLastname" name="lastname">
  </div>
  
  <div class="mb-3">
    <label for="exampleInputAddress" class="form-label">Address</label>
    <input type="text" class="form-control" id="exampleInputAddress"name="address">
  </div>
   <div class="mb-3">
    <label for="exampleInputCity" class="form-label">City</label>
    <input type="text" class="form-control" id="exampleInputCity" name="city">
  </div>
  <div class="mb-3">
    <label for="exampleInputState" class="form-label">State</label>
    <input type="text" class="form-control" id="exampleInputState"name="state">
  </div>
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Email address</label>
    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="email">
    <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
  </div>
  <div class="mb-3">
    <label for="exampleInputPhone" class="form-label">Phone</label>
    <input type="text" class="form-control" id="exampleInputPhone" name="phone">
  </div>
  <div class="mb-3 form-check">
    <input type="checkbox" class="form-check-input" id="exampleCheck1">
    <label class="form-check-label" for="exampleCheck1">Check me out</label>
  </div>
  <button type="submit" class="btn btn-primary">Submit</button>
</form>

</div>
</div>
</div>
</div>
</div>
</body>
</html>