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

try {
con = new ConnectionMySql();

ps = con.getConnection().prepareStatement("Select * from studentDetails where major='IS'");

rs = ps.executeQuery(); 

%>
<form method="post" action="viewStudentDetails.jsp">
<table align="center" style="table-layout:fixed" frame="box">
<tr bgcolor="#d3d3d3">
<td><font face="courier" size="2" color="gray">S.No.</font></td><td><font face="courier" size="2" color="gray">Notify</font></td><td><font face="courier" size="2" color="gray">Photo
</font></td><td><font face="courier" size="2" color="gray">Id</font></td><td width="20%" align="center"><font face="courier" size="2" color="gray">
Name</font></td><td><font face="courier" size="2" color="gray">View  Details</font></td></tr>
<tr>
<%
while(rs.next())
{%>
<td width ="5%"><%=i%></td>
<td width ="5%"><input type="checkBox" value="<%=rs.getString("Id")%>" name="id"/></td>
<td width ="5%"><input type="image" src="img/a.jpg"/></td>
<td width ="5%"><%=rs.getString("Id")%></td>
<td width="20%" align="center"><%=rs.getString("fname")+" "+rs.getString("mname")+" "+rs.getString("lname")%></td>
<td width ="5%"><input type="image" src="img/viewDetail.JPG" style="height:20px;width=25px;" value="<%=rs.getString("Id")%>" name="nameId"/></td></tr>
<%
i++;}
}
catch(SQLException e){}
%>
</table>
<table>
<tr>
<td><font face="courier" size="2" color="gray"><a href="facultyLogin.jsp"><input type="button" value="Home" /></a></font></td>
</tr></table>
</form>
</body>
</html>