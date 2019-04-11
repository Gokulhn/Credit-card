package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dboperation.DbOperations;

@WebServlet("/deleteApplication")
public class deleteApplication extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public deleteApplication() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession ses = request.getSession();
		String uid = (String) ses.getAttribute("uid");
		DbOperations db = new DbOperations();
		String status = request.getParameter("confirm");
		if (status.equals("true")) {
			db.deleteApplication(uid);
			response.sendRedirect("deletedApplication.html");
		} else {
			response.sendRedirect("userApplication.jsp");
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
