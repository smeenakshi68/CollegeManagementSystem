<%@ page language="java" session="true" %>
 <%@ page import="java.sql.*" %>
 <%@ page import ="com.ConnectionMySql" %> 
<%@ page contentType="application/vnd.ms-excel" pageEncoding="ISO-8859-1"%> 
<%response.setHeader("Content-Disposition", "attachment;filename=ExportReport.xls"); %>
<body>
<%

int i=1;
PreparedStatement ps = null;
ResultSet rs = null;
ConnectionMySql con = null;
String course;
String Y,M;

try {
course = (String)session.getAttribute("course");
M = (String)session.getAttribute("M");
Y = (String)session.getAttribute("Y");

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
<td width ="5%"><%=Integer.parseInt(rs.getString("firstPayment"))+Integer.parseInt(rs.getString("secondPayment"))%></td>
<td width ="5%"><%=rs.getString("balance")%></td>
<td width ="5%"><%=rs.getString("correspondAddr")%></td>
</tr>

<%
i++;}
}
catch(SQLException e){}
%>
</table>


</body>
</html>