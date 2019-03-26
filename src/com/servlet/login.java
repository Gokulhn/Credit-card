package com.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dboperation.DbOperations;
import com.dboperation.UserPro;

@WebServlet(description = "this page for login", urlPatterns = { "/login" })
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public login() {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		DbOperations ur = new DbOperations();
		String username = request.getParameter("uname");
		String pass = request.getParameter("upass");
		if (ur.checkLogin(username, pass)) {
			request.setAttribute("uname", username);
			response.sendRedirect("userApplication.html");
//			RequestDispatcher rd = request.getRequestDispatcher("userApplication.html");
		} else {
			request.setAttribute("uname", username);
			response.sendRedirect("InvalidLogin.jsp");
		}
		

	}
}
