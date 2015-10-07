<%@ page language="java" session="true" %>
 <%@ page import="java.sql.*" %>
 <%@ page import ="com.ConnectionMySql" %> 
<%@ page contentType="application/vnd.ms-excel" pageEncoding="ISO-8859-1"%> 
<%response.setHeader("Content-Disposition", "attachment;filename=AccountReport.xls"); %>
<body>
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
<tr><font face ="courier" size="3" color="GRAY"><b><td>Job Type</td></b></font>
<br><b><td><%=rs.getString("jobType")%></td></b></tr>
<br><br>
<tr><font face ="courier" size="3" color="GRAY"><td><b>Salary In hand</b></td></font>
<br>
<b><td><%="$ "+(Integer.parseInt(rs.getString("salary"))+Integer.parseInt(rs.getString("incentives"))+Integer.parseInt(rs.getString("bonus")))%></td></b>
</tr><br><br>
<tr><td><font face ="courier" size="3" color="GRAY"><b>Account Information</b></font><td><tr>
<tr><td><font face ="courier" size="3" color="GRAY">salary</font></td><td><%="$ " +rs.getString("salary") %></td></tr>
<tr><td><font face ="courier" size="3" color="GRAY">Incentives for this month</font></td><td><%= "$ "+rs.getString("incentives") %></td></tr>
<tr><td><font face ="courier" size="3" color="GRAY">cca</font></td><td><%= "$ "+rs.getString("cca") %></td></tr>
<tr><td><font face ="courier" size="3" color="GRAY">bonus</font></td><td><%= "$ "+rs.getString("bonus") %></td></tr>
<%}	
}catch(Exception e){e.printStackTrace();}  %>
 </table>
</body>
</html>