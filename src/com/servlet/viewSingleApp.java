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

import Application.Application;

/**
 * Servlet implementation class viewSingleApp
 */
@WebServlet("/viewSingleApp")
public class viewSingleApp extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public viewSingleApp() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DbOperations db = new DbOperations();
		String uid=request.getParameter("uid");
		List<Application> view=db.viewFullApplication(uid);
		RequestDispatcher rd = request.getRequestDispatcher("viewSingleApp.jsp");
		request.setAttribute("list", view);
		rd.forward(request, response);
		
	}

	
}
