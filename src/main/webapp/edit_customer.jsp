<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.dao.daoclass" %>
<%@page import="com.conn.dbconnect" %>
<%@page import="com.entity.Customer" %>
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
<p class="fs-3 text-center">Edit Student</p>

<%
int id=Integer.parseInt(request.getParameter("id"));
daoclass dc=new daoclass(dbconnect.getConnection());
Customer s=dc.getcustomer(id);
%>

<form action="update" method="post">
 <div class="mb-3">
    <label for="exampleInputFisrtname" class="form-label">Firstname</label>
    <input type="text" class="form-control" id="exampleInputFirstname" name="firstname" value="<%=s.getFirstname()%>">
  </div>
   <div class="mb-3">
    <label for="exampleInputLastname" class="form-label">Lastname</label>
    <input type="text" class="form-control" id="exampleInputLastname" name="lastname" value="<%=s.getLastname()%>">
  </div>
  
  <div class="mb-3">
    <label for="exampleInputAddress" class="form-label">Address</label>
    <input type="text" class="form-control" id="exampleInputAddress"name="address" value="<%=s.getAddress() %>">
  </div>
  <div class="mb-3">
    <label for="exampleInputCity" class="form-label">City</label>
    <input type="text" class="form-control" id="exampleInputCity"name="city" value="<%= s.getCity()%>">
  </div>
   <div class="mb-3">
    <label for="exampleInputState" class="form-label">State</label>
    <input type="text" class="form-control" id="exampleInputState" name="state" value="<%=s.getState()%>">
  </div>
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Email address</label>
    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="email" value="<%= s.getEmail()%>">
    <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
  </div>
  <div class="mb-3">
    <label for="exampleInputPhone" class="form-label">Phone</label>
    <input type="phone" class="form-control" id="exampleInputPhone" name="phone" value="<%=s.getPhone() %>">
  </div>
  <div class="mb-3 form-check">
    <input type="checkbox" class="form-check-input" id="exampleCheck1">
    <label class="form-check-label" for="exampleCheck1">Check me out</label>
  </div>
 <input type="hidden" name="id" value="<%=s.getId()%>">
  <button type="submit" class="btn btn-primary">update</button>
</form>

</div>
</div>
</div>
</div>
</div>
</body>
</html>