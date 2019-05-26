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

@WebServlet("/approApp")
public class approApp extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public approApp() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DbOperations db=new DbOperations();
		List<Application> app= db.approApp();
		RequestDispatcher rd= request.getRequestDispatcher("approApp.jsp");
		request.setAttribute("data", app);
		rd.forward(request, response);
		
	}

	

}
