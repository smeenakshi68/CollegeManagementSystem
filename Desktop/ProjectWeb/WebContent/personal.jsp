<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="java.sql.*" %>
 <%@ page import ="com.ConnectionMySql" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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

ps = con.getConnection().prepareStatement("Select * from studentdetails,accountstudent where studentdetails.id = accountStudent.id and studentdetails.id='"+id+"'");
rs = ps.executeQuery(); 

%>
<fieldset  style="width:60%; height:50%; border: 2px solid:#003366;padding:10; background-color:white;">
<legend align="left" width="60%"><b><font size="4" color="RED" face="Courier New">PERSONAL INFORMATION</font></b></legend>
	
<table >
<%
while(rs.next())
{
%>
<tr>
<TD colspan=3 align="LEFT"><font face="courier"><b>First Name</b> </font></td>
<td  colspan=3  align="LEFT"><font color="000044" face="courier"><%=rs.getString("fname")%></font></td>
</tr>
<tr >
<TD colspan=3 align="LEFT"><font face="courier"><b>Mid Name </b></font></td>
<td  colspan=3 align="LEFT"><font color="000044"><%=rs.getString("mname")%></font></td>
</tr>
<tr >
<TD colspan=3  align="LEFT"><font face="courier"><b>Last Name</b> </font></td>
<td  colspan=3  align="LEFT"><font color="000044"><%=rs.getString("lname")%></font></td>
</tr>
<tr><TD colspan=3  align="LEFT"><font face="courier"><b>D.O.B</b></font></td>
<td colspan=3  align="LEFT"><font color="000044"><%=rs.getString("dob")%></font></td></tr>

<tr><TD colspan=3 align="LEFT"><font face="courier"><b>Father's Name</b></font></td>
<td colspan=3  align="LEFT"><font color="000044"><%=rs.getString("fatherName")%></font></TD>
</tr>
<tr><TD colspan=3 align="LEFT" ><font face="courier"><b>Marital Status</b></font></td>
<td colspan=3  align="LEFT" ><font color="000044"><%=rs.getString("MaritalStat")%></font></TD></tr>

<tr><TD colspan=3 align="LEFT"><font face="courier"><b>Nationality</b></font></td>
<td colspan=3  align="LEFT"><font color="000044"><%=rs.getString("Nationality")%></font></TD></tr>

<tr><TD colspan=3 align="LEFT"><font face="courier"><b>Correspondence Address</b></font></td>
<td colspan=3  align="LEFT"><font color="000044"><%=rs.getString("correspondAddr")%></font></TD></tr>


<tr><TD colspan=3 align="LEFT"><font face="courier"><b>Current Address</b></font></td>
<td colspan=3  align="LEFT"><font color="000044"><%=rs.getString("currentAddr")%></font></TD></tr>

<tr><TD colspan=3 align="LEFT"><font face="courier"><b>Permanent Address</b></font></td>
<td colspan=3  align="LEFT"><font color="000044"><%=rs.getString("permanentAddr")%></font></TD></tr>
<%
}
}
catch(Exception e){ e.printStackTrace();}%>
              </table>
 </fieldset>            
</body>
</html>