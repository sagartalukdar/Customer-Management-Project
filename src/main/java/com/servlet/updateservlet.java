package com.servlet;

import java.io.IOException;


import javax.servlet.http.HttpSession;

import com.conn.dbconnect;
import com.dao.daoclass;
import com.entity.Customer;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/update")
public class updateservlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String firstname=req.getParameter("firstname");
		String lastname=req.getParameter("lastname");
		String address=req.getParameter("address");
		String city=req.getParameter("city");
		String state=req.getParameter("state");
		String email=req.getParameter("email");
		String phone=req.getParameter("phone");
		int id=Integer.parseInt(req.getParameter("id"));
		
		Customer c=new Customer    (id,firstname,lastname,address,city,state,email,phone);
		
		daoclass dc=new daoclass(dbconnect.getConnection());
		
		jakarta.servlet.http.HttpSession session =req.getSession();
		
		boolean b=dc.updatecustomer(c);
		if(b) {
			session.setAttribute("sucmsg", "successfully Updated");
			resp.sendRedirect("customer.jsp");
			System.out.print("successfully Updated");
		}
		else {
			session.setAttribute("errmsg", "error in Updation");
			resp.sendRedirect("customer.jsp");
			System.out.print("unsuccessfull Updation");
		}
	}


	
}
