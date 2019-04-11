package com.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dboperation.DbOperations;

@WebServlet("/isAppliedApplication")
public class IsAppliedApplication extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public IsAppliedApplication() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		DbOperations db = new DbOperations();
		HttpSession hs = request.getSession();
		RequestDispatcher rd = null;
		String uid = (String) hs.getAttribute("uid");
		if (db.isApplied(uid)) {
			response.sendRedirect("sorryApplication.jsp");
		} else {
			response.sendRedirect("Application.jsp");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
