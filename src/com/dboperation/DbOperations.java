package com.dboperation;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class DbOperations {
	static DbConnection ob = DbConnection.obj;
	static String str = "Select * from user_login where uname =? and upass = ?";
	static String signup = "insert into user_signup(uname,mobnum,mailid,pass) values(?,?,?,?)";
	static String addlogin = "insert into user_login values(?,?)";
	static String str1 = "Select * from manager where mname =? and mpass = ?";

	public static String signUp(Signup s) {
		Connection con = null;
		PreparedStatement pst = null;
		try {
			con = ob.getConnection();
			pst = con.prepareStatement(signup);
			pst.setString(1, s.getName());
			pst.setString(2, s.getMobnum());
			pst.setString(3, s.getMailid());
			pst.setString(4, s.getPass());
			int i = pst.executeUpdate();
			if (i > 0) {
				System.out.println("sign up of user in db successful :" + s.getName());
			} else {
				System.out.println("sign up in db failed " + s.getName());
			}

		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}

		return s.getName();

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
		String view = "Select uname,mobnum,mailid from user_signup";

		try {
			con=ob.getConnection();
			st = con.createStatement();
			rs = st.executeQuery(view);
			while (rs.next()) {
				s = new Signup();
				s.setName(rs.getNString("uname"));
				s.setMobnum(rs.getString("mobnum"));
				s.setMailid(rs.getString("mailid"));
				sign.add(s);
			}
			System.out.println("SignUp List added successfully!!!!!!!");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return sign;
	}

}
