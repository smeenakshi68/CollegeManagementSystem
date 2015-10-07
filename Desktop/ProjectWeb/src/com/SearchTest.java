package com;

import java.sql.*;
import java.util.ArrayList;

public class SearchTest {
	public static void main(String args[]) throws Exception
	{
		
		String quest = "SCHOOL";
		ConnectionMySql ConnectionManager = new ConnectionMySql();
		PreparedStatement ps = null;
		Statement stmt = null;
		ResultSet rs =null,rs2 =null;
		stmt = ConnectionManager.getConnection().createStatement();
		rs2 = stmt.executeQuery("select count(*) from search");
		rs2.next();
		int count = rs2.getInt(1);
		rs = stmt.executeQuery("select searchName,link from search");
		while(rs.next())
		{
			String str = rs.getString("searchName");
		
		if(str.toLowerCase().contains(quest.toLowerCase()))
		{
		System.out.println(str +"Link "+rs.getString("link"));
		}
		
		}
		
	}

}
