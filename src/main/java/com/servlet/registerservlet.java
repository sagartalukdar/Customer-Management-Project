package com.servlet;

import java.io.IOException;

import java.sql.Connection;

import javax.servlet.http.HttpSession;

import com.conn.dbconnect;
import com.dao.daoclass;
import com.entity.Customer;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/register")
public class registerservlet extends HttpServlet{
    
	Connection con=dbconnect.getConnection();
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	String firstname=req.getParameter("firstname");
	String lastname=req.getParameter("lastname");
	String address=req.getParameter("address");
	String city=req.getParameter("city");
	String state=req.getParameter("state");
	String email=req.getParameter("email");
	String phone=req.getParameter("phone");
		
	Customer c=new Customer (firstname,lastname,address,city,state,email,phone);
	daoclass dc=new daoclass(con); 
	jakarta.servlet.http.HttpSession session= req.getSession();
	boolean b=dc.addcustomer(c);
	if(b) {
		session.setAttribute("sucmsg", "successfully Added");
		resp.sendRedirect("add_customer.jsp");
		System.out.print("successfully inserted");
	}
	else {
		session.setAttribute("errmsg", "error in Addition");
		resp.sendRedirect("add_customer.jsp");
		System.out.print("not inserted");
	}
	}
     
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
