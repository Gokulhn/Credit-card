package com.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dboperation.DbOperations;
import com.dboperation.UserPro;

@WebServlet(description = "this page for login", urlPatterns = { "/login" })
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public login() {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		DbOperations ur = new DbOperations();
		String username = request.getParameter("uname");
		String pass = request.getParameter("upass");
		if (ur.checkLogin(username, pass)) {
			String uid = ur.getUserID(username);
			session.setAttribute("uid", uid);
			session.setAttribute("uname", username);
			response.sendRedirect("userApplication.jsp");
		} else {

			request.setAttribute("uname", username);
			response.sendRedirect("InvalidLogin.jsp");
		}

	}
}
