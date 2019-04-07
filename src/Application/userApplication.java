package Application;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/userApplication")
public class userApplication extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public userApplication() {
		super();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher rd = null;

		String fname = request.getParameter("first");
		String lname = request.getParameter("last");
		String cardname = request.getParameter("oncardname");
		String mname = request.getParameter("mothername");
		String dname = request.getParameter("fathername");
		String wife = request.getParameter("Spousename");
		String dob = request.getParameter("bday");
		String gender = request.getParameter("gender");
		String marital = request.getParameter("status");
		String citizen = request.getParameter("nation");
		String education = request.getParameter("education");
		String pan = request.getParameter("panNum");
		String addar = request.getParameter("Addar");
		String address = request.getParameter("address");
		String mob = request.getParameter("mobnum");
		String mail = request.getParameter("mailId");
		
	}

}
