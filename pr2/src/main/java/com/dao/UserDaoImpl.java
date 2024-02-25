package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDaoImpl implements UserDao {

	private static final String DName  = "com.mysql.cj.jdbc.Driver";
	private static final String DataBase = "jdbc:mysql://localhost:3306/login";
	private static final String Uname = "root";
	private static final String Pwd = "root";
	
	@Override
	public boolean isValidUser(String username, String password) {
		String query = "Select * from users where username=? and password=?";
		
		try {
			Class.forName(DName);
			Connection con = DriverManager.getConnection(DataBase, Uname, Pwd);
			PreparedStatement pst = con.prepareStatement(query);
			pst.setString(1, username);
			pst.setString(2, password);
			
			ResultSet rs = pst.executeQuery();
			return rs.next();
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

}
