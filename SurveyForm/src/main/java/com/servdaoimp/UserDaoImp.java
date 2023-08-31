package com.servdaoimp;
import java.sql.*;



import com.serventity.Userdao;


public class UserDaoImp {
	
	private Connection con = null;
	
	public Connection conPro() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/survey","root","root");
			System.out.println(con);
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		System.out.println(con);
		return con;
	}
	
	public boolean insertFeed(Userdao usd) {
		boolean f = false;
		
		System.out.println(con);
		try {
			String sql = "insert into user(name,email,age,occupation,refer,domain,comment) values(?,?,?,?,?,?,?)";
			PreparedStatement ps = conPro().prepareStatement(sql);
			ps.setString(1, usd.getName());
			ps.setString(2, usd.getEmail());
			ps.setString(3, usd.getAge());
			ps.setString(4, usd.getDesc());
			ps.setString(5, usd.getRefer());
			ps.setString(6, usd.getDomain());
			ps.setString(7, usd.getComment());
			
			int i = ps.executeUpdate();
			if(i>0) f = true;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return f;
	}
	
	public boolean insertNew(Userdao usd) {
		boolean f = false;
		
		System.out.println(con);
		try {
			String sql = "insert into applier(name,email,occupation,domain,comment) values(?,?,?,?,?)";
			PreparedStatement ps = conPro().prepareStatement(sql);
			ps.setString(1, usd.getName());
			ps.setString(2, usd.getEmail());
			
			ps.setString(3, usd.getDesc());
			
			ps.setString(4, usd.getDomain());
			ps.setString(5, usd.getComment());
			
			int i = ps.executeUpdate();
			if(i>0) f = true;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return f;
	}
}
