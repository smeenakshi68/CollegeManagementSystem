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

String nameid= (String)session.getAttribute("nameid");
session.setAttribute("nameid",nameid);
String fname = request.getParameter("fname");
String mname = request.getParameter("mname");
String lname = request.getParameter("lname");
String fatherName = request.getParameter("fathername");
String major = request.getParameter("major");
String courseType = request.getParameter("courseType");
String dob = request.getParameter("dob");
String admittedOn = request.getParameter("admittedOn");
try {
con = new ConnectionMySql();

ps = con.getConnection().prepareStatement("update studentDetails set fname ='"+fname+"',mname='"+mname+"',lname='"+lname+"',fatherName ='"+fatherName+"',major='"+major+"',courseType='"+courseType+"', dob='"+dob+"',admittedOn='"+admittedOn+"' where id ='"+nameid+"'");

ps.execute();
ps.close();
response.sendRedirect("searchAllStudent.jsp");
}
catch(Exception e){out.println(e);}


%>
</body>
</html>