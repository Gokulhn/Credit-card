package com.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dboperation.DbOperations;

@WebServlet("/deleteSignup")
public class deleteSignup extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public deleteSignup() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		DbOperations db = new DbOperations();
		String name = request.getParameter("name");
		db.deleteSignup(name);
		db.deleteLogin(name);
		RequestDispatcher rd = request.getRequestDispatcher("/updatedSignup");
		rd.forward(request, response);
	}

}
