package com.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.credit.mailer.MailService;
import com.dboperation.DbOperations;
import com.dboperation.IdGenerator;
import com.dboperation.Signup;
import com.dboperation.UserPro;

@WebServlet(description = "this page for user_signup", urlPatterns = { "/signup" })
public class signup extends HttpServlet implements Runnable {
	private String email;
	private String message;
	private String subject;
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
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
		String uid = IdGenerator.getID();
		Signup s = new Signup(name, mobnum, mailid, pass, cpass,uid);
		Boolean status = DbOperations.signUp(s);
		if(status) {
			signup sign=new signup();
			sign.setEmail(mailid);
			sign.setMessage("You have signed in successfully"+"\n"+"Please login with your valid password and username..");
			sign.setSubject("Signin confimation");
			Thread thread = new Thread(sign);
			thread.start();
		}
		System.out.println("signed up user");
		UserPro u=new UserPro(name,pass);
		String lname= DbOperations.addLogin(u);
		response.sendRedirect("userLogin.html");

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
	@Override
	public void run() {
		MailService.sendMailService(getEmail(), getMessage(), getSubject());
		
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}

	

}
