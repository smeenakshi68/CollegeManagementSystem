<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.sql.*" %>
 <%@ page import ="com.ConnectionMySql" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<jsp:useBean id="bean" class="bean.LoginBean" scope="session"/>
<jsp:setProperty property="*" name="bean"/>
</head>
<body>
<%
String name = request.getParameter("email");
String role = request.getParameter("role");
String password = request.getParameter("password");
PreparedStatement ps = null;
ResultSet rs = null;
ConnectionMySql con = null;
try {
con = new ConnectionMySql();

ps = con.getConnection().prepareStatement("Select count(*) from user where userName='"+name+"'and password='"+password+"'and role='"+role+"'");

rs = ps.executeQuery(); 
rs.next();
int count = rs.getInt(1);
out.println(out);
if(count==1)
{
session.setAttribute("username", name);
session.setAttribute("role", role);
response.sendRedirect("welcomePage.jsp");
}
else
{
	response.sendRedirect("error.jsp");
}
}
catch(Exception e){out.println(e);}
%>

</body>
</html>