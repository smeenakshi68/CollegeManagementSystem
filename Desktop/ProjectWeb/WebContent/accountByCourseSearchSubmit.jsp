<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
 <%@ page import ="com.ConnectionMySql" %>  
  <% 
if (session.isNew() == true || session.getAttribute("username") == null || session.getAttribute("role") == null)
{
    response.sendRedirect("sessionExpired.html");
}
%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

int i=1;
PreparedStatement ps = null;
ResultSet rs = null;
ConnectionMySql con = null;
String course;
String date;
String Y,M;

try {
course = request.getParameter("course");
date = request.getParameter("year");
M = date.substring(0,date.length()-3);
Y = date.substring((date.length()-4 ),date.length());

session.setAttribute("course",course);
session.setAttribute("M",M);
session.setAttribute("Y",Y);
con = new ConnectionMySql();
ps = con.getConnection().prepareStatement("Select * from studentdetails,accountstudent where studentdetails.id=accountstudent.id and studentdetails.major='"+course+"' and YEAR(studentdetails.admittedOn)='"+Y+"' and MONTH(studentdetails.admittedOn)='"+M+"'");

rs = ps.executeQuery(); 


%>
<table align="center" style="table-layout:fixed" frame="box">

<tr bgcolor="#d3d3d3">
<td><font face="courier" size="2" color="gray">S.No.</font></td>
<td><font face="courier" size="2" color="gray">ID</font></td>
<td><font face="courier" size="2" color="gray">Name</font></td>
<td><font face="courier" size="2" color="gray">Payment Plan</font></td>
<td align="center"><font face="courier" size="2" color="gray">First Payment</font></td>
<td><font face="courier" size="2" color="gray">Second Payment</font></td>
<td><font face="courier" size="2" color="gray">Total Paid</font></td>
<td><font face="courier" size="2" color="gray">balance</font></td>
<td><font face="courier" size="2" color="gray">Correspondence Addr</font></td></tr>
<%
while(rs.next())
{%>
<tr>

<td width ="5%"><%=i%></td>
<td width ="5%"><%=rs.getString("Id")%></td>
<td width="5%" align="center"><%=rs.getString("fname")+" "+rs.getString("mname")+" "+rs.getString("lname")%></td>
<td width ="5%"><%=rs.getString("paymentPlan")%></td>
<td width ="5%"><%=rs.getString("firstPayment")%></td>
<td width ="5%"><%=rs.getString("secondPayment")%></td>
<td width ="5%"><%=Integer.parseInt(rs.getString("firstPayment"))+Integer.parseInt(rs.getString("secondPayment")) %></td>
<td width ="5%"><%=rs.getString("balance")%></td>
<td width ="5%"><%=rs.getString("correspondAddr")%></td>
</tr>

<%
i++;}
}
catch(SQLException e){}
%>
</table>
<table>
<tr>
<td><font face="courier" size="2" color="gray"><a href="admin.jsp"><input type="button" value="HOME" /></a></font></td>
<td><font face="courier" size="2" color="gray"><a href="courseWiseAccountReport.jsp"><input type="button" value="GENERATE REPORT" /></a></font></td>
</tr>
</table>

</body>
</html>