package com.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dboperation.DbOperations;

@WebServlet("/deleteAppMan")
public class deleteAppMan extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public deleteAppMan() {
        super();
    }
    
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DbOperations db = new DbOperations();
		String uid = request.getParameter("uid");
		db.deleteApplication(uid);
		RequestDispatcher rd = request.getRequestDispatcher("/updateViewApp");
		rd.forward(request, response);
		
	}

}
