package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.credit.mailer.MailService;

/**
 * Servlet implementation class acceptApp
 */
@WebServlet(urlPatterns = { "/acceptApp", "/rejectApp", "/logout" })
public class acceptApp extends HttpServlet implements Runnable {
	private static final long serialVersionUID = 1L;

	private String email, message, subject;

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
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

	public acceptApp() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = request.getRequestURI();
		HttpSession session = request.getSession();
		if (url.endsWith("acceptApp")) {
			String getEmail = request.getParameter("mail");
			acceptApp app = new acceptApp();
			app.setEmail(getEmail);
			app.setMessage("Your application has been accepted successfully..."+"\n"+"Please Wait untill we send the virtual credit card to you...");
			app.setSubject("Approval confimation");
			Thread thread = new Thread(app);
			thread.start();
			response.sendRedirect("approveSuccess.jsp");
		} else if (url.endsWith("rejectApp")) {
			String getEmail = request.getParameter("mail");
			acceptApp app = new acceptApp();
			app.setEmail(getEmail);
			app.setMessage("Your application has been rejected!!!!!"+"\n"+"Please check your applied application ");
			app.setSubject("Approval confimation");
			Thread thread = new Thread(app);
			thread.start();
			response.sendRedirect("approReject.jsp");
		} else if (url.endsWith("logout")) {
			session.removeAttribute("uid");
			// session.invalidate();
			response.sendRedirect("home.jsp");
		}

	}

	@Override
	public void run() {
		MailService.sendMailService(getEmail(), getMessage(), getSubject());

	}

}
