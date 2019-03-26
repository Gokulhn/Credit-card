package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dboperation.DbOperations;

/**
 * Servlet implementation class ManagerLogin
 */
@WebServlet(description = "manager login page", urlPatterns = { "/ManagerLogin" })
public class ManagerLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ManagerLogin() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DbOperations ur = new DbOperations();
		String mname = request.getParameter("mname");
		String mpass = request.getParameter("mpass");
		if (ur. checkManagerLogin(mname, mpass)) {
			request.setAttribute("mname", mname);
			response.sendRedirect("manager.jsp");
//			RequestDispatcher rd = request.getRequestDispatcher("userApplication.html");
		} else {
			request.setAttribute("uname", mname);
			response.sendRedirect("InvalidLogin.jsp");
		}
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
