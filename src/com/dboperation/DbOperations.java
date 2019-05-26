package com.dboperation;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.credit.domain.Mail;

import Application.Application;

public class DbOperations {
	Statement st = null;
	ResultSet rs = null;
	PreparedStatement pst = null;
	static DbConnection ob = DbConnection.obj;
	static String str = "Select * from user_login where uname =? and upass = ?";
	static String signup = "insert into user_signup(uname,mobnum,mailid,pass,uid) values(?,?,?,?,?)";
	static String addlogin = "insert into user_login values(?,?)";
	static String str1 = "Select * from manager where mname =? and mpass = ?";
	static String DELETE = "delete from application where uid=?";

	public  static boolean signUp(Signup s) {
		Connection con = null;
		PreparedStatement pst = null;
		try {
			con = ob.getConnection();
			pst = con.prepareStatement(signup);
			pst.setString(1, s.getName());
			pst.setString(2, s.getMobnum());
			pst.setString(3, s.getMailid());
			pst.setString(4, s.getPass());
			pst.setString(5, s.getUid());
			int i = pst.executeUpdate();
			if (i==1 ) {
				System.out.println("sign up of user in db successful :" + s.getName());
				return true;
			} else {
				System.out.println("sign up in db failed " + s.getName());
			}

		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}

		return false;

	}

	public boolean checkLogin(String user, String pass) {
		Connection con = null;
		PreparedStatement pst = null;
		ResultSet rs = null;
		try {
			con = ob.getConnection();
			pst = con.prepareStatement(str);
			pst.setString(1, user);
			pst.setString(2, pass);
			rs = pst.executeQuery();
			if (rs.next()) {
				System.out.println("Login successsful " + user);
				return true;
			}

		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}
		return false;
	}

	public static String addLogin(UserPro u) {
		Connection con = null;
		PreparedStatement pst = null;
		try {
			con = ob.getConnection();
			pst = con.prepareStatement(addlogin);
			pst.setString(1, u.getUname());
			pst.setString(2, u.getUpass());
			int i = pst.executeUpdate();
			if (i > 0) {
				System.out.println("Login added :" + u.getUname());
			} else {
				System.out.println("Login adding failed :" + u.getUname());
			}
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}
		return u.getUname();
	}

	public boolean checkManagerLogin(String mname, String mpass) {
		Connection con = null;
		PreparedStatement pst = null;
		ResultSet rs = null;
		try {
			con = ob.getConnection();
			pst = con.prepareStatement(str1);
			pst.setString(1, mname);
			pst.setString(2, mpass);
			rs = pst.executeQuery();
			if (rs.next()) {
				System.out.println("Manager Login successsful " + mname);
				return true;
			}

		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}
		return false;
	}

	public List<Signup> viewSignUp() {
		List<Signup> sign = new ArrayList<>();
		Signup s;
		Connection con = null;
		Statement st = null;
		ResultSet rs = null;
		String view = "Select uname,mobnum,mailid,uid from user_signup";

		try {
			con = ob.getConnection();
			st = con.createStatement();
			rs = st.executeQuery(view);
			while (rs.next()) {
				s = new Signup();
				s.setName(rs.getNString("uname"));
				s.setMobnum(rs.getString("mobnum"));
				s.setMailid(rs.getString("mailid"));
				s.setUid(rs.getString("uid"));

				sign.add(s);
			}
			System.out.println("SignUp List added successfully!!!!!!!");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return sign;
	}

	public void deleteSignup(String name) {
		Connection con = null;
		PreparedStatement pst = null;
		String delete = "delete from user_signup where uname=?";
		try {
			con = ob.getConnection();
			pst = con.prepareStatement(delete);
			pst.setString(1, name);
			int i = pst.executeUpdate();
			if (i > 0) {
				System.out.println("Successfull Deleted signup with name  : " + name);
			}
		} catch (Exception e) {
			System.out.println(e);
		} finally {
			ob.close();
		}
	}

	public void deleteLogin(String name) {
		Connection con = null;
		PreparedStatement pst = null;
		String delete = "delete from user_login where uname=?";
		try {
			con = ob.getConnection();
			pst = con.prepareStatement(delete);
			pst.setString(1, name);
			int i = pst.executeUpdate();
			if (i > 0) {
				System.out.println("Successfull Deleted login with name  : " + name);
			}
		} catch (Exception e) {
			System.out.println(e);
		} finally {
			ob.close();
		}
	}

	public boolean addApplication(Application app) {
		Connection con = null;
		PreparedStatement pst = null;
		String application = "Insert into application (accnum,fname,lname,cardname,mname,dname,wife,income,dob,gender,marital,citizen,education,pan,addar,address,mob,desig,emp,mail,uid) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		try {
			con = ob.getConnection();
			pst = con.prepareStatement(application);
			pst.setString(1, app.getAcc());
			pst.setString(2, app.getFname());
			pst.setString(3, app.getLname());
			pst.setString(4, app.getCardname());
			pst.setString(5, app.getMname());
			pst.setString(6, app.getDname());
			pst.setString(7, app.getWife());
			pst.setString(8, app.getIncome());
			pst.setString(9, app.getDob());
			pst.setString(10, app.getGender());
			pst.setString(11, app.getMarital());
			pst.setString(12, app.getCitizen());
			pst.setString(13, app.getEducation());
			pst.setString(14, app.getPan());
			pst.setString(15, app.getAddar());
			pst.setString(16, app.getAddress());
			pst.setString(17, app.getMob());
			pst.setString(18, app.getDesig());
			pst.setString(19, app.getEmp());
			pst.setString(20, app.getMail());
			pst.setString(21, app.getUid());
			int i = pst.executeUpdate();
			if (i > 0) {
				System.out.println("Application added successfull...");
				return true;
			} else {
				System.out.println("Application adding failed !!!!!");
				return false;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

	public int getUserCount() {
		Connection con = null;
		String countQuery = "SELECT COUNT(uid) FROM user_signup";
		int count = 0;
		try {
			con = ob.getConnection();
			st = con.createStatement();
			rs = st.executeQuery(countQuery);
			while (rs.next()) {
				count = rs.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return count;
	}

	public String getUserID(String username) {
		String getuserQuery = "SELECT UID FROM USER_SIGNUP WHERE UNAME =?";
		try {
			Connection con = ob.getConnection();
			PreparedStatement pst = con.prepareStatement(getuserQuery);
			pst.setString(1, username);
			rs = pst.executeQuery();
			while (rs.next()) {
				return rs.getString(1);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	public boolean isApplied(String uid) {
		String isAppliedQuery = "SELECT UID FROM APPLICATION WHERE UID=?";
		try {
			Connection con = ob.getConnection();
			PreparedStatement pst = con.prepareStatement(isAppliedQuery);
			pst.setString(1, uid);
			rs = pst.executeQuery();
			while (rs.next()) {
				return true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

	public List<Application> viewApp() {
		List<Application> app = new ArrayList<>();
		String viewApplication = "select appid,uid,fname,accnum from application";
		Application ap;

		try {
			Connection con = ob.getConnection();
			st = con.createStatement();
			rs = st.executeQuery(viewApplication);
			while (rs.next()) {
				ap = new Application();
				ap.setAid(rs.getInt("appid"));
				ap.setUid(rs.getString("uid"));
				ap.setFname(rs.getString("fname"));
				ap.setAcc(rs.getString("accnum"));
				app.add(ap);
			}
			System.out.println("Application data retrieved successfully.......");
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return app;
	}

	public boolean deleteApplication(String uid) {
		Connection con = ob.getConnection();
		try {
			pst = con.prepareStatement(DELETE);
			pst.setString(1, uid);
			int i = pst.executeUpdate();
			if (i == 1) {
				System.out.println("application deleted successfully!!! ->" + uid);
				return true;
			} else {
				System.out.println("Application deletion failed!!!!");
				return false;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

	public boolean updatePass(String uname, String newPass) {
		Connection con = ob.getConnection();
		String UPDATE = "update user_login set upass=? where uname=?";
		try {
			pst = con.prepareStatement(UPDATE);
			pst.setString(2, uname);
			pst.setString(1, newPass);
			int i = pst.executeUpdate();
			if (i > 0) {
				System.out.println("Password updated successfully.....");
				return true;
			} else {
				System.out.println("Password updated failed!!!!");
				return false;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

	public List<Application> viewFullApplication(String uid) {
		List<Application> app = new ArrayList<>();
		Connection con = ob.getConnection();
		String view = "select * from application where uid=?";
		Application ap;

		try {
			pst = con.prepareStatement(view);
			pst.setString(1, uid);
			rs = pst.executeQuery();
			while (rs.next()) {
				ap = new Application();
				ap.setAid(rs.getInt("appid"));
				ap.setUid(rs.getString("uid"));
				ap.setFname(rs.getString("fname"));
				ap.setAddar(rs.getString("addar"));
				ap.setAddress(rs.getString("address"));
				ap.setCardname(rs.getString("cardname"));
				ap.setCitizen(rs.getString("citizen"));
				ap.setDesig(rs.getString("desig"));
				ap.setDname(rs.getString("dname"));
				ap.setDob(rs.getString("dob"));
				ap.setEmp(rs.getString("emp"));
				ap.setGender(rs.getString("gender"));
				ap.setMail(rs.getString("mail"));
				ap.setMarital(rs.getString("marital"));
				ap.setMname(rs.getString("mname"));
				ap.setMob(rs.getString("mob"));
				ap.setPan(rs.getString("pan"));
				ap.setAcc(rs.getString("accnum"));
				ap.setWife(rs.getString("wife"));
				ap.setIncome(rs.getString("income"));

				app.add(ap);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return app;
	}
	
	public List<Application> approApp() {
		List<Application> app = new ArrayList<>();
		String viewApplication = "select appid,uid,mail,fname from application";
		Application ap;

		try {
			Connection con = ob.getConnection();
			st = con.createStatement();
			rs = st.executeQuery(viewApplication);
			while (rs.next()) {
				ap = new Application();
				ap.setAid(rs.getInt("appid"));
				ap.setUid(rs.getString("uid"));
				ap.setMail(rs.getString("mail"));
				ap.setFname(rs.getString("fname"));
				app.add(ap);
			}
			System.out.println("Application data retrieved successfully.......");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return app;
	}
	
	public Mail getMailAuthentication() {
		String selectMailDetailsQuery = "SELECT * FROM MAIL";
		Mail mail = null;
		try {
			Connection con = ob.getConnection();
			st = con.createStatement();
			rs = st.executeQuery(selectMailDetailsQuery);
			while (rs.next()) {
				mail = Mail.builder().hostmailaddress(rs.getString(1)).hostpassword(rs.getString(2)).build();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return mail;
	}

}
