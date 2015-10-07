<%@ page language="java" session="true" %>
 <%@ page import="java.sql.*" %>
 <%@ page import ="com.ConnectionMySql" %> 
<%@ page contentType="application/vnd.ms-excel" pageEncoding="ISO-8859-1"%> 
<%response.setHeader("Content-Disposition", "attachment;filename=report.xls"); %>
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
<tr><td><font face ="courier" size="3" color="GRAY"><b>ID</b></td></font>
<br><b><td><%=rs.getString("id")%></td></b></tr>
<br><br>
<tr><td><font face ="courier" size="3" color="GRAY"><b>Payment Plan</b></td></font>
<br><b><td><%=rs.getString("paymentPlan")%></td></b></tr>
<br><br>
<tr><td><font face ="courier" size="3" color="GRAY"><b>Next Payment</b></td></font>
<br>
<b><td><%="$ "+rs.getString("balance")%></td></b><td>  due on <b><%=rs.getString("dueDate")%></td></b>
</tr>
<br><br>
<tr><font face ="courier" size="3" color="GRAY"><b><td>Total Paid</td></b></font>
<br>
<b><td><%=Integer.parseInt(rs.getString("firstPayment"))+Integer.parseInt(rs.getString("secondPayment"))%></td></b>
</tr><br><br>
<tr><td><font face ="courier" size="3" color="GRAY"><b>Account Information</b></font><td><tr>
<tr><td><font face ="courier" size="3" color="GRAY">Balance</font></td><td><%=rs.getString("balance") %></td></tr>
<tr><td><font face ="courier" size="3" color="GRAY">payment paid this month</font></td><td><%=rs.getString("secondPayment") %></td></tr>
<tr><td><font face ="courier" size="3" color="GRAY">pament paid last month</font></td><td><%=rs.getString("firstPayment") %></td></tr>
<%}	
}catch(Exception e){e.printStackTrace();}  %>
 </table>
 </fieldset>            
</body>
</html>