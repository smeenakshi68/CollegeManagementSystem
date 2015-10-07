<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search by Id </title>
<script type="text/javascript" >
 function validateForm()
 {
 	if(frmM.id.value =="" ||frmM.id.value == null)
 	{
 	    alert("Enter Id to search");
 	    frmM.id.focus();
 		return;
 	}	
 	frmM.action="submitStudentSearch.jsp";
     frmM.submit();
 	
 }

 </script>
</head>
 
<body>
<br>
<br>
<form name="frmM" id ="frmM" method ="post">
<fieldset style="width:50%; height:50%; border: 2px solid:#003366;padding:10; background-color:white;align:center;">
<legend align="left" width="50%"><b><font size="4" color="RED" face="Courier New">FIND AN EXISTING VALUE</font></b></legend>
	
<table width="50%">

<tr><td><font face ="courier" size="3" color="GRAY"><b>ENTER ID</b></font><td><tr>
<tr><td><font face ="courier" size="3" color="GRAY"><input type ="text" name="id" size="30"/> </font></td></tr>
<tr><td><font face ="courier" size="3" color="GRAY"><input type ="submit" value="submit" onClick="validateForm()"/> </font></td></tr>
              </table>
 </fieldset> 
 </form>           
</body>
</html>