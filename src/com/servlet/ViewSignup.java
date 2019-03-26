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
import com.dboperation.Signup;
@WebServlet("/ViewSignup")
public class ViewSignup extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public ViewSignup() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DbOperations db=new DbOperations();
		List<Signup> sign= db.viewSignUp();
		RequestDispatcher rd= request.getRequestDispatcher("viewsignup.jsp");
		request.setAttribute("list", sign);
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
