package com.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dboperation.DbOperations;
import com.dboperation.Signup;
import com.dboperation.UserPro;

@WebServlet(description = "this page for user_signup", urlPatterns = { "/signup" })
public class signup extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public signup() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String name = request.getParameter("userName");
		String mobnum = request.getParameter("mobile");
		String mailid = request.getParameter("email");
		String pass = request.getParameter("pass");
		String cpass = request.getParameter("cpass");
		Signup s = new Signup(name, mobnum, mailid, pass, cpass);
		String sname = DbOperations.signUp(s);
		System.out.println("signed up user :" + sname);
		UserPro u=new UserPro(name,pass);
		String lname= DbOperations.addLogin(u);
		response.sendRedirect("userLogin.html");

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
