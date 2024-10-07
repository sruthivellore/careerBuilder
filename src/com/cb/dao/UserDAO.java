package com.cb.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.cb.dbutility.DBConnection;
import com.cb.dto.User;

public class UserDAO {

	public int newUser(String fname, String userName, String email, String password) {
		Connection con = null;
		PreparedStatement pst = null;
		int rst = 0;
		User u = null;
		
		final String INSERT_QUERY = "insert into Users (fullName, userName, email, password) values(?, ?, ?, ?)";
		
		try {
			
			con = DBConnection.getConnection();
			pst = con.prepareStatement(INSERT_QUERY);
		    pst.setString(1, fname);	
		    pst.setString(2, userName);
		    pst.setString(3, email);
		    pst.setString(4, password);
		    
		    rst = pst.executeUpdate();
		    

		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return rst;
	}
	
	public User checkUser(String email, String password) {
		Connection con = null;
		PreparedStatement pst = null;
		ResultSet rst = null;  
	    User u = null;
		
		final String SELECT_QUERY = "select *from Users where email = ? and password = ?";  //The '?' are placeholders.
		
		try {
			
			con = DBConnection.getConnection();
			pst = con.prepareStatement(SELECT_QUERY);
		    pst.setString(1, email);
		    pst.setString(2, password);
		    
		    rst = pst.executeQuery();
		    
		    if(rst.next()) {
		   	 u=new User();
			 u.setUserId(rst.getInt(1));
			 u.setFullName(rst.getString(2));
			 u.setUserName(rst.getString(3));
			 u.setEmail(rst.getString(4));
			 u.setPassword(rst.getString(5));
		    }
		    
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (NullPointerException e) {
			e.printStackTrace();
		}
		  
	return u;
	}
	
	public int editEntry(int userId, String fullName, String userName, String email, String password) {
		Connection con = null;
		PreparedStatement pst = null;
		int rst;  
	    int x = 0;
	    
	    final String UPDATE_QUERY = "update Users set fullName = ?, userName = ?, email = ?, password = ? where userId = ?";
	    
	    try {	
			con = DBConnection.getConnection();
			pst = con.prepareStatement(UPDATE_QUERY);

			pst.setString(1, fullName);
		    pst.setString(2, userName);
		    pst.setString(3, email);
		    pst.setString(4,  password);
		    pst.setInt(5, userId);
		    
		    rst = pst.executeUpdate();
		    x = 1;
	    }
	    catch (SQLException e) {
			e.printStackTrace();
		}
	    return x;
	}
	
	public int deleteEntry (int userId) {
		Connection con = null;
		PreparedStatement pst = null;
		int rst = 0;
		
		final String DELETE_QUERY = "delete from Users where userId=?";
		
		try {
			con = DBConnection.getConnection();
			pst = con.prepareStatement(DELETE_QUERY);
			
			pst.setInt(1, userId);
			rst=pst.executeUpdate();
		}
		catch (SQLException e) {
			e.printStackTrace();
		}
		return rst;
	}
	
	public String retrieveSub(int subCode) {
		Connection con = null;
		PreparedStatement pst = null;
		ResultSet rst = null;  
		String x = "";
		
		final String SELECT_QUERY = "select sub from tenth_subs where subCode = ?";
		
		try {
			con = DBConnection.getConnection();
			pst = con.prepareStatement(SELECT_QUERY);
		    pst.setInt(1, subCode);
		    
		    rst = pst.executeQuery();
		    
		    if(rst.next()) {
		    	x = rst.getString(1);
		    }
		}
		
		catch (SQLException e) {
			e.printStackTrace();
		}
		
		return x;	
	}
	
	public ArrayList<String> retrieveBranch(String subName) {
		Connection con = null;
		PreparedStatement pst = null;
		ResultSet rst = null;  
		ArrayList<String> branchList = new ArrayList<>();
		
		
		final String SELECT_QUERY = "select "+subName+" from courses";
		
		try {
			con = DBConnection.getConnection();
			pst = con.prepareStatement(SELECT_QUERY);
	//	    pst.setString(1, subName);		    
		    rst = pst.executeQuery();
		    
		    while(rst.next()) {
		    	branchList.add(rst.getString(1));
		    }
		    
		}
		
		catch (SQLException e) {
			e.printStackTrace();
		}
		
		return branchList;	
	}
	
	public ArrayList<String> retrieveInstitute(String subName) {
		Connection con = null;
		PreparedStatement pst = null;
		ResultSet rst = null;  
		ArrayList<String> instiList = new ArrayList<>();
		
		
		final String SELECT_QUERY = "select "+subName+" from institutions";
		
		try {
			con = DBConnection.getConnection();
			pst = con.prepareStatement(SELECT_QUERY);    
		    rst = pst.executeQuery();
		    
		    while(rst.next()) {
		    	instiList.add(rst.getString(1));
		    	//System.out.println(rst.getString(1)); 
		    }
		}
		
		catch (SQLException e) {
			e.printStackTrace();
		}
		
		return instiList;	
	}
	
	public ArrayList<String> getSubs(String subName) {
		Connection con = null;
		PreparedStatement pst = null;
		ResultSet rst = null;  
		ArrayList<String> subsList = new ArrayList<>();
		
		
		final String SELECT_QUERY = "select "+subName+" from courseSubs";
		
		try {
			con = DBConnection.getConnection();
			pst = con.prepareStatement(SELECT_QUERY);    
		    rst = pst.executeQuery();
		    
		    while(rst.next()) {
		    	subsList.add(rst.getString(1));
		    	//System.out.println(rst.getString(1)); 
		    }
		}
		
		catch (SQLException e) {
			e.printStackTrace();
		}
		
		return subsList;
	}
	
	public ArrayList<String> getLinks(String subName) {
		Connection con = null;
		PreparedStatement pst = null;
		ResultSet rst = null;  
		ArrayList<String> linksList = new ArrayList<>();
		
		
		final String SELECT_QUERY = "select "+subName+" from insti_links";
		
		try {
			con = DBConnection.getConnection();
			pst = con.prepareStatement(SELECT_QUERY);    
		    rst = pst.executeQuery();
		    
		    while(rst.next()) {
		    	linksList.add(rst.getString(1));
		    	//System.out.println(rst.getString(1)); 
		    }
		}
		
		catch (SQLException e) {
			e.printStackTrace();
		}
		
		return linksList;
	}
}
