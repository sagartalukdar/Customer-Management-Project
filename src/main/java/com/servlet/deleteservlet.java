package com.servlet;

import java.io.IOException;

import com.conn.dbconnect;
import com.dao.daoclass;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/delete")
public class deleteservlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id=Integer.parseInt(req.getParameter("id"));
		daoclass dc=new daoclass(dbconnect.getConnection());
jakarta.servlet.http.HttpSession session =req.getSession();
		
		boolean b=dc.delete(id);
		if(b) {
			session.setAttribute("sucmsg", "successfully delete");
			resp.sendRedirect("customer.jsp");
			System.out.print("successfully deleted");
		}
		else {
			session.setAttribute("errmsg", "error in deletion");
			resp.sendRedirect("customer.jsp");
			System.out.print("unsuccessfull deletion");
		}
	}

}
