<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.dao.daoclass" %>
<%@page import="com.conn.dbconnect" %>
<%@page import="com.entity.Customer" %>
<%@page import="java.util.*" %>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="bootstrap.jsp" %>
</head>
<body>

<%@include file="navbar.jsp" %>

<div class="container p-4">
<div class="card">
<div class="card-body">
<div class="hed_btn">
<a href="add_customer.jsp" class="btn btn-sm btn-primary"><i class="fa-solid fa-user-plus" style="color: #ffffff;"></i>ADD Customer</a>

</div>
<p class="text-center fs-8">Customer List</p>

<c:if test="${not empty sucmsg }">
<p class="text-center text-success">${sucmsg }</p>
<c:remove var="sucmsg"/>
</c:if>

<c:if test="${not empty errmsg }">
<p class="text-center text-success">${errmsg}</p>
<c:remove var="errmsg"/>
</c:if>
<table class="table">
  <thead>
    <tr>
      <th scope="col"></th>
      <th scope="col">First name</th>
      <th scope="col">Last Name</th>
      <th scope="col">Address</th>
      <th scope="col">City </th>
      <th scope="col">State</th>
      <th scope="col">Email</th>
      <th scope="col">Phone</th>
      <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
  <%
  daoclass dc=new daoclass(dbconnect.getConnection());
  List<Customer>sl=dc.show();
  for(Customer s:sl){
   %> 
    <tr>
      <th scope="row"><%=s.getId() %></th>
      <td><%=s.getFirstname() %></td>
      <td><%=s.getLastname() %></td>
      <td><%=s.getAddress() %></td>
      <td><%=s.getCity() %></td>
      <td><%=s.getState() %></td>
      <td><%=s.getEmail() %></td>
      <td><%=s.getPhone() %></td>
      <td><a href="edit_customer.jsp?id=<%=s.getId() %>" class="btn btn-sm btn-primary"><i class="fa-solid fa-pen-to-square"></i>Edit</a>
      
      <a href="delete?id=<%=s.getId() %>" class="btn btn-sm btn-danger ms-1"><i class="fa-solid fa-trash-can"></i>Delete</a>
      </td>
    </tr> 
	
  <%}
  
  %>
  
    
  </tbody>
</table>
</div>
</div>
</div>

</body>
</html>