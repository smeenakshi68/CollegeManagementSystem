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
<title>edit Student details</title>
 <script type="text/javascript" >
 function validateForm()
 {
 	if(frmMain.fname.value =="")
 	{
 	    alert("Enter keyword to search");
 	    frmMain.fname.focus();
 		return;
 	}	
 	frmMain.action="submitEditDetails.jsp";
     frmMain.submit();
		 
 }

 </script>
</head>
<body>
<%
int i=1;
PreparedStatement ps = null;
ResultSet rs = null;
ConnectionMySql con = null;
String id= (String)session.getAttribute("id");
session.setAttribute("id",id);
String nameId = request.getParameter("nameId");
session.setAttribute("nameid",nameId);
try {
con = new ConnectionMySql();

ps = con.getConnection().prepareStatement("Select * from studentDetails where id ='"+nameId+"'");

rs = ps.executeQuery(); 


%>
<form name="frmMain" id ="frmMain" method ="post">
<fieldset style="width:50%; height:50%; border: 2px solid:#003366;padding:10; background-color:white;align:center;">
<legend align="left" width="50%"><b><font size="4" color="RED" face="Courier New">VIEW STUDENT DETAILS</font></b></legend>
<table align="center" style="table-layout:fixed" frame="box" size="50%" >
<tr bgcolor="#d3d3d3">
<td><font face="courier" size="2" color="gray">ID</font></td>
<td><font face="courier" size="2" color="gray">First Name</font></td>
<td><font face="courier" size="2" color="gray">Mid Name</font></td>
<td><font face="courier" size="2" color="gray">Last Name</font></td>
<td align="center"><font face="courier" size="2" color="gray">Father's Name</font></td>

<tr>
<%
if(rs.next())
{%>
<td width ="5%"><%=rs.getString("id")%></td>
<td width ="5%"><input type="text" value="<%=rs.getString("fname")%>" name="fname"/></td>
<td width ="5%"><input type="text" value="<%=rs.getString("mname")%>" name="mname"/></td>
<td width ="5%"><input type="text" value="<%=rs.getString("lname")%>" name="lname"/></td>
<td width="5%" align="center"><input type="text" value="<%=rs.getString("fatherName")%>" name="fathername"/></td>
</tr>
<tr bgcolor="#d3d3d3">
<td><font face="courier" size="2" color="gray">Major</font></td>
<td><font face="courier" size="2" color="gray">Course Type</font></td>
<td><font face="courier" size="2" color="gray">DOB</font></td>
<td><font face="courier" size="2" color="gray">Admitted On</font></td>

<tr>
<tr>
<td width ="5%"><input type="text" value="<%=rs.getString("major")%>" name="major"/></td>
<td width ="5%"><input type="text" value="<%=rs.getString("courseType")%>" name="courseType"/></td>
<td width ="5%"><input type="text" value="<%=rs.getString("dob")%>" name="dob"/></td>
<td width ="5%"><input type="text" value="<%=rs.getString("admittedOn")%>" name="admittedOn"/></td>

</tr>

<tr>
<td><font face="courier" size="2" color="gray"><a href="viewDetails.jsp"><input type="button" value="back" /></a></font></td>
</tr>

<%
}
}
catch(SQLException e){}
%>
</table>
</fieldset>
</form>
</body>
</html>