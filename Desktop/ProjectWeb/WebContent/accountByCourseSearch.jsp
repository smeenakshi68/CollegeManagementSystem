<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search by Id </title>
<script type="text/javascript" >
 function validate()
 {
 	frm.action="accountByCourseSearchSubmit.jsp";
     frm.submit();
 	
 }

 </script>
</head>
 
<body>
<br>
<br>
<form name="frm" id ="frm" method ="post">
<fieldset style="width:50%; height:50%; border: 2px solid:#003366;padding:10; background-color:white;align:center;">
<legend align="left" width="50%"><b><font size="4" color="RED" face="Courier New">FIND AN EXISTING VALUE</font></b></legend>
	
<table width="50%">

<tr><td><font face ="courier" size="3" color="GRAY"><b>SELECT COURSE</b></font>
<td><select name="course">
<option value="CS">CS</option>
<option value="IS">IS</option>
</select>
</td>
<tr>
<tr><td><font face ="courier" size="3" color="GRAY"><b>SELECT YEAR</b></font>
<td><select name="year">
<option value="2,2015">Spring,2015</option>
<option value="9,2014">Fall,2014</option>
</select>
</td>
<tr>
<tr><td><font face ="courier" size="3" color="GRAY"><input type ="submit" value="submit" onClick="validate()"/> </font></td></tr>
              </table>
 </fieldset> 
 </form>           
</body>
</html>