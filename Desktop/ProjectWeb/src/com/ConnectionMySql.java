package com;

import java.sql.*;


public class ConnectionMySql {
	 public Connection getConnection () {
	        try{
	           Class.forName("com.mysql.jdbc.Driver");
	           try {
	               return DriverManager.getConnection("jdbc:mysql://localhost/ProjectWeb","root","s3cur3");
	           } catch (SQLException e) {
	               System.err.println(e);
	               e.printStackTrace();
	                return null; // better throw an exception
	           }
	        } catch(ClassNotFoundException ex) {
	            System.err.println("Error loading driver");
	            return null; // better throw an exception
	        }
	    }

}
