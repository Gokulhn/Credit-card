package Application;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dboperation.DbOperations;

@WebServlet("/userApplication")
public class userApplication extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public userApplication() {
		super();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		DbOperations db = new DbOperations();
		HttpSession hs = request.getSession();
		String uid = (String) hs.getAttribute("uid");
		String acc = request.getParameter("acc");
		String fname = request.getParameter("first");
		String lname = request.getParameter("last");
		String cardname = request.getParameter("oncardname");
		String mname = request.getParameter("mothername");
		String dname = request.getParameter("fathername");
		String wife = request.getParameter("Spousename");
		String income = request.getParameter("income");
		String dob = request.getParameter("bday");
		String gender = request.getParameter("gender");
		String marital = request.getParameter("status");
		String citizen = request.getParameter("nation");
		String education = request.getParameter("education");
		String pan = request.getParameter("panNum");
		String addar = request.getParameter("Addar");
		String address = request.getParameter("address");
		String mob = request.getParameter("mobnum");
		String desig = request.getParameter("disg");
		String emp = request.getParameter("emp");
		String mail = request.getParameter("mailId");

		Application app = Application.builder().acc(acc).fname(fname).lname(lname).cardname(cardname).mname(mname)
				.dname(dname).wife(wife).income(income).dob(dob).gender(gender).marital(marital).citizen(citizen)
				.education(education).pan(pan).addar(addar).address(address).mob(mob).desig(desig).emp(emp).mail(mail)
				.uid(uid).build();

		boolean status = db.addApplication(app);
		if (status) {
			response.sendRedirect("successApp.jsp");
		} else {
			response.sendRedirect("failedApp.jsp");
		}

	}

}
