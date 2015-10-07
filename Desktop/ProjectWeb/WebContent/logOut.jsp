<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>log out</title>
</head>
<body>
<% 
session.setAttribute("id","null");
session.invalidate();%>

<p>You have been successfully logout</p>
<table>
<tr>
<td><font face="courier" size="2" color="gray"><a href="MyPage.jsp"><input type="button" value="HOME" /></a></font></td>
</tr>
</table>
</body>
</html>