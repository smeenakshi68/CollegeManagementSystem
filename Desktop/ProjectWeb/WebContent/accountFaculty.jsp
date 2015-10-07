<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 <%@ page import="java.sql.*" %>
 <%@ page import ="com.ConnectionMySql" %> 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<br>
<br>
<% 
PreparedStatement ps = null,ps2=null;
ResultSet rs = null, rs2=null;
ConnectionMySql con = null;
String username = (String)session.getAttribute("username");
try {
con = new ConnectionMySql();
ps2 = con.getConnection().prepareStatement("select id from user where username='"+username+"'");
rs2 =ps2.executeQuery();
rs2.next();
String id = rs2.getString("id");
ps = con.getConnection().prepareStatement("select * from salary where id='"+id+"'");
rs = ps.executeQuery(); 
while (rs.next())
{

%>
<fieldset style="width:50%; height:50%; border: 2px solid:#003366;padding:10; background-color:white;align:center;">
<legend align="left" width="50%"><b><font size="4" color="RED" face="Courier New">SALARY INFORMATION</font></b></legend>
	
<table width="50%">
<tr><font face ="courier" size="3" color="GRAY"><b>Job Type</b></font>
<br><b><%=rs.getString("jobType")%></b></tr>
<br><br>
<tr><font face ="courier" size="3" color="GRAY"><b>Salary In hand</b></font>
<br>
<b><%="$ "+(Integer.parseInt(rs.getString("salary"))+Integer.parseInt(rs.getString("incentives"))+Integer.parseInt(rs.getString("bonus")))%></b>
</tr><br><br>
<tr><td><font face ="courier" size="3" color="GRAY"><b>Account Information</b></font><td><tr>
<tr><td><font face ="courier" size="3" color="GRAY">salary</font></td><td><%="$ " +rs.getString("salary") %></td></tr>
<tr><td><font face ="courier" size="3" color="GRAY">Incentives for this month</font></td><td><%= "$ "+rs.getString("incentives") %></td></tr>
<tr><td><font face ="courier" size="3" color="GRAY">cca</font></td><td><%= "$ "+rs.getString("cca") %></td></tr>
<tr><td><font face ="courier" size="3" color="GRAY">bonus</font></td><td><%= "$ "+rs.getString("bonus") %></td></tr>
<%}	
}catch(Exception e){e.printStackTrace();}  %>
 </table>
 <table>
 <tr>
 <td><a href="facultyReport.jsp"><input type="button" value="Save" name="AccountReport" /></a></td>
 </tr></table>
 </fieldset>            
</body>
</html>