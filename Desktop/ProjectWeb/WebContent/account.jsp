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
ps = con.getConnection().prepareStatement("select * from accountstudent where id='"+id+"'");
rs = ps.executeQuery(); 
while (rs.next())
{

%>
<fieldset style="width:50%; height:50%; border: 2px solid:#003366;padding:10; background-color:white;align:center;">
<legend align="left" width="50%"><b><font size="4" color="RED" face="Courier New">ACCOUNT INFORMATION</font></b></legend>
	
<table width="50%">
<tr><font face ="courier" size="3" color="GRAY"><b>Payment Plan</b></font>
<br><b><%=rs.getString("paymentPlan")%></b></tr>
<br><br>
<tr><font face ="courier" size="3" color="GRAY"><b>Next Payment</b></font>
<br>
<b><%="$ "+rs.getString("balance")%></b>due on<b><%=rs.getString("dueDate")%></b>
</tr>
<br><br>
<tr><font face ="courier" size="3" color="GRAY"><b>Total Paid</b></font>
<br>
<b><%=Integer.parseInt(rs.getString("firstPayment"))+Integer.parseInt(rs.getString("secondPayment"))%></b>
</tr><br><br>
<tr><td><font face ="courier" size="3" color="GRAY"><b>Account Information</b></font><td><tr>
<tr><td><font face ="courier" size="3" color="GRAY">Balance</font></td><td><%=rs.getString("balance") %></td></tr>
<tr><td><font face ="courier" size="3" color="GRAY">payment paid this month</font></td><td><%=rs.getString("secondPayment") %></td></tr>
<tr><td><font face ="courier" size="3" color="GRAY">pament paid last month</font></td><td><%=rs.getString("firstPayment") %></td></tr>
<%}	
}catch(Exception e){e.printStackTrace();}  %>
 </table>
 <table>
 <tr>
 <td><a href="report.jsp"><input type="button" value="Save" name="report" /></a></td>
 </tr></table>
 </fieldset>            
</body>
</html>