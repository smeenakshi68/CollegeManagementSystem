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
<jsp:useBean id="bean" class="bean.LoginBean" scope="session"/>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Your Page</title>


<style type="text/css">
    ul.nav{
        padding: 0;
        list-style: none;
    }
    ul.nav li.top{
        float:center;
        width: 100px;
        text-align: center;
        line-height: 21px;
    }
    ul.nav li.top a{
        display: block;
        padding: 5px 10px;
        color: #333;
        background: white;
        text-decoration: none;
    }
    ul.nav li.top a:hover{
        color: #fff;
        background: #f2f2f2;
    }
	</style>
<style type="text/css">

#nav {
	position:relative
	width:700px;
	margin:0 auto; 
	margin-top:5px;
	padding:0px;
}

ul#navigation {
	margin:0px
	position:relative;
	border-top:1px solid #c4dbe7;
	float:center;
}

ul#navigation li {
	display:inline;
	font-size:12px;
	font-family: "Times New Roman";
	float:left;
	position:relative;
	border-top:1px soild GRAY;
}

ul#navigation li a {
	padding:10px 30px;
	color:#616161;
	text-shadow:1px 1px 0px #fff;
	text-decoration:none;
	display:block;
	border-right:1px solid #fff;
	border-left:1px solid #C2C2C2;
	border-top:1px solid #fff;
	background:;
	
	
}

ul#navigation li a:hover {
	background:#f8f8f8;
	color:#282828;
}

ul#navigation li a.first {
	border-left: 0 none;
}

ul#navigation li a.last {
	border-right: 0 none;
}

ul#navigation li:hover > a {
	background:#fff;
}


ul#navigation li:hover > ul
{
	visibility:visible;
	opacity:1;
}

ul#navigation ul, ul#navigation ul li ul {
	list-style: none;
    margin: 0;
    padding: 0;    
    visibility:hidden;
    opacity:1;
    position:absolute;
    z-index: 99999;
	width:180px;
	background:#f8f8f8;
	box-shadow:1px 1px 3px #ccc;
	-webkit-transition:opacity 0.2s linear, visibility 0.2s linear; 
	-moz-transition:opacity 0.2s linear, visibility 0.2s linear; 
	-o-transition:opacity 0.2s linear, visibility 0.2s linear; 
	transition:opacity 0.2s linear, visibility 0.2s linear; 	
}

ul#navigation ul {
    top: 43px;
    left: 1px;
}

ul#navigation ul li ul {
    top: 0;
    left: 180px;
}

ul#navigation ul li {
	clear:both;
	width:100%;
	border:0 none;
	border-bottom:1px solid #c9c9c9;
}

ul#navigation ul li a {
	background:none;
	padding:7px 15px;
	color:#616161;
	text-shadow:1px 1px 0px #fff;
	text-decoration:none;
	display:inline-block;
	border:0 none;
	float:none;
	clear:both;
	width:150px;
}
</style>

<script type="text/javascript">
     function toggle_homework() {
       document.getElementById('show_work').style.display = "block";
	document.getElementById('show_contact').style.display = "none";
	 document.getElementById('degree_work').style.display = "none";
	 document.getElementById('democs_work').style.display = "none";
	 document.getElementById('demois_work').style.display = "none";

	}

 function toggle_contact() {
	 document.getElementById('degree_work').style.display = "none";
       document.getElementById('show_work').style.display = "none";
	document.getElementById('show_contact').style.display = "block";
	document.getElementById('democs_work').style.display = "none";
	document.getElementById('demois_work').style.display = "none";

	}
 function toggle_degree() {
	 document.getElementById('degree_work').style.display = "block";
     document.getElementById('show_work').style.display = "none";
	document.getElementById('show_contact').style.display = "none";
	document.getElementById('democs_work').style.display = "none";
	document.getElementById('demois_work').style.display = "none";

	}
function toggle_democs() { 
	 document.getElementById('degree_work').style.display = "none";
     document.getElementById('show_work').style.display = "none";
	document.getElementById('show_contact').style.display = "none";
	document.getElementById('demois_work').style.display = "none";
	document.getElementById('democs_work').style.display = "block";
	}
 
function toggle_demois() { 
	 document.getElementById('degree_work').style.display = "none";
    document.getElementById('show_work').style.display = "none";
	document.getElementById('show_contact').style.display = "none";
	document.getElementById('democs_work').style.display = "none";
	document.getElementById('demois_work').style.display = "block";
	}

</script>
</head>
<body >
<%
String role = (String)session.getAttribute("role");
String username = (String)session.getAttribute("username");
%>
<div>
<table width="150" border="0" cellspacing= "5" cellpadding ="0">
<tr>
<td>
<a href="MyPage.jsp">
<input type= "image" value="logo" id="logo" style="height:60px;width=70px;" src="img/logo.jpg"/>
</a>
</td>
<td>
<input type= "image" value="plain" style="height=50px" src="img/bg_faculty.jpg"/>
</td>
<td>
<ul class="nav">
<li class="top"><font color="RED" size="3px" style="Courier">Hi, <%=bean.getEmail() %></font></li>
</ul>
</td>
<td>
<td>
<a href="logOut.jsp">
<input type= "image" value="logout" id="logout" style="height:20px;width=20px;" src="img/out.JPG"/>
</a>
</td>


</tr>
</table>
</div>
<div id="nav">
<ul id="navigation">
<li ><a href="#"  class="first" onclick="toggle_homework()">STUDENTS DETAILS</a></li>

        <li><a href="#"  onclick="toggle_contact()">MY ACCOUNT</a></li>
		
        <li><a href="#">STUDENTS &raquo;</a>
        <ul>
        <li><a href="#">Current Spring 2015</a>
				<ul><li><a href="#" onclick="toggle_democs()">CS456</a></li>
                        <li><a href="#" onclick="toggle_demois()">CS210</a></li>
                        <li><a href="#">CS638</a></li>
                  </ul></li></ul></li>
		 <li><a href="#">ACADEMIC PROGRAMS &raquo;</a>

            <ul>

                <li><a href="#">SCHOOLS &raquo;</a>
				<ul class="nav">
				<li><a href ="#">Professional Schools &raquo;</a>
				<ul>
				<li><a href="#">School of Architecture </a></li>
                        <li><a href="#">School of Drama</a></li>
                        <li><a href="#">Law School</a></li>
                        <li><a href="#">Management School </a></li>
						 <li><a href="#">School of Medicine</a></li>
						  <li><a href="#">School of Music</a></li>
                        <li><a href="#">School of Public Health</a></li>
                        <li><a href="#">School of Art </a></li>
						 <li><a href="#">School of Engineering And Applied Science</a></li>
                    </ul>    
					</li>
				<li><a href ="#">Non-Degree Programs</a>
				<ul>
                        <li><a href="#">Undergraduate/Alumni</a></li>
                        <li><a href="#">Graduate School (GSAS)</a></li>
                        
                    </ul>  </li>
				<li><a href ="#">Other Programs</a>
				<ul>
                        <li><a href="#">Summer Session</a></li>
                        <li><a href="#">World Fellows Program</a></li>
                    </ul>  </li>
				</ul>
                 </li>       
                <li><a href="departmentPrograms.jsp">DEPARTMENT AND PROGRAMS</a>
                <li><a href="research.jsp">RESEARCH CENTERS</a>               
                </li>                 
                <li><a href="#">LIBRARY</a></li>
            </ul>
        </li>
    </ul>
</div>
<br></br>
<div id="show_work" style="display:none;" style="float:center" >
<jsp:include page="viewDetails.jsp"></jsp:include>
</div>
<div id="democs_work" style="display:none;" style="float:center" >
<jsp:include page="DemoCS456.jsp"></jsp:include>
</div>
<div id="demois_work" style="display:none;" style="float:center" >
<jsp:include page="DemoCS210.jsp"></jsp:include>
</div>
<div id="show_contact" style="display:none;" >
<jsp:include page="accountFaculty.jsp"></jsp:include>
</div>
<div id="degree_work" style="display:none;" >
<jsp:include page="degree.jsp"></jsp:include>
</div>
</body>
</html>