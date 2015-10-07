<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
  
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Your Page</title>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>

<script type="text/javascript" src="stepcarousel.js">
</script>

<style type="text/css">

.stepcarousel{
position: relative; 
border: none;
overflow: scroll; 
width: 1000px; 
height: 300px; 
-webkit-box-sizing: border-box;
-moz-box-sizing: border-box;
box-sizing: border-box;
}

.stepcarousel .belt{
position: absolute; /*leave this value alone*/
left: 0;
top: 0;
}

.stepcarousel .panel{
float: left; /*leave this value alone*/
overflow: hidden; /*clip content that go outside dimensions of holding panel DIV*/
margin: 1px; /*margin around each panel*/
width: 1000px; /*Width of each panel holding each content. If removed, widths should be individually defined on each content DIV then. */
}

span.paginatecircle{ /* CSS for paginate circle spans. Required */
background: white;
border: None;
border-radius: 10px;
width: 6px;
height: 6px;
cursor: pointer;
display: inline-block;
margin-right: 4px;
}

span.paginatecircle:hover{
background: gray;
}

span.paginatecircle.selected{
background: black;
}

#footer {
    background-color:None;
    color:white;
    text-align:center;
    padding:10px;
}
#mygallery {
    background-color:None;
    color:white;
    text-align:center;
    padding:10px;
}

</style>
<style type="text/css">
    ul.nav{
        padding: 0;
        list-style: none;
    }
    ul.nav li.top{
        float: left;
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
/* Main Navigation */
#nav {
	position:absolute
	width:700px;
	margin:0 auto; 
	margin-top:5px;
	padding:0px;
}

ul#navigation {
	margin:0px
	position:relative;
	border-top:1px solid #c4dbe7;
	float:none;
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

/* Drop-Down Navigation */
ul#navigation li:hover > ul
{
/*these 2 styles are very important, being the ones which make the drop-down to appear on hover */
	visibility:visible;
	opacity:1;
}

ul#navigation ul, ul#navigation ul li ul {
	list-style: none;
    margin: 0;
    padding: 0;    
/*the next 2 styles are very important, 
being the ones which make the drop-down to stay hidden */
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
.con {
    overflow: hidden;
}
.rows {
    float: left;
    margin: 60px;
    background-color: none;
    padding-bottom: 1000px;
    margin-bottom: -1000px;
}
</style>

<script type="text/javascript">

stepcarousel.setup({
	galleryid: 'mygallery', //id of carousel DIV
	beltclass: 'belt', //class of inner "belt" DIV containing all the panel DIVs
	panelclass: 'panel', //class of panel DIVs each holding content
	autostep: {enable:true, moveby:1, pause:3000},
	panelbehavior: {speed:500, wraparound:true, wrapbehavior:'slide', persist:true},
	//defaultbuttons: {enable: true, moveby: 1, leftnav: ['arrowl.gif', 40, 150], rightnav: ['arrowr.gif', -50, 150]},
	statusvars: ['statusA', 'statusB', 'statusC'], //register 3 variables that contain current panel (start), current panel (last), and total panels
	contenttype: ['inline'] //content setting ['inline'] or ['ajax', 'path_to_external_file']
})

</script>
    

</head>
<body >
<div>
<table width="150" border="0" cellspacing= "0" cellpadding ="0">
<tr>
<td>
<a href="MyPage.jsp">
<input type= "image" value="logo" id="logo" style="height:60px;width=70px;" src="img/logo.jpg"/>
</a>
</td>
<td> 
<input type ="text" name="query"  style="height:30px"  size="140" placeholder="Search Your Page..."/>
</td>
<td>
<input type= "image" value="search" id="search" style="height:35px;width=35px;" src="img/search.jpg"/>
</td>
<td> &nbsp&nbsp&nbsp&nbsp </td>
<td>
<a href="joinclub.html">
<input type= "image" value="clubLogo" id="clubLogo" style="height:25px;width=20px;" src="img/club.jpg"/>
</a>
</td>
<td>
<a href="joinclub.jsp;" target="blank" ><font color="Black" size="2px" style="Times in Roman"><b>&nbspJoin&nbspNow&nbsp</b></font></a><br>
&nbsp&nbsp<font color="Black" size="3px" style="Times in Roman">Enroll</font>
</td>
<td>
<ul class="nav">
<li class="top"><a href="signIn.jsp" target="blank" ><font color="RED" size="3px" style="Times in Roman"><b>Sign&nbspIn&nbsp</b></font></a></li>
<li> </li>
    </ul>
</td>
</tr>
</table>
</div>
<div id="nav">
<ul id="navigation">
<li ><a href="MyPage.jsp"  class="first">HOME</a></li>

        <li><a href="#">ACADEMIC PROGRAMS &raquo;</a>

           <ul>

                <li><a href="#">SCHOOLS &raquo;</a>
				<ul class="nav">
				<li><a href ="#">Professional Schools &raquo;</a>
				<ul>
				<li><a href="architectSchool.jsp">School of Architecture </a></li>
                        <li><a href="dramaSchool.jsp">School of Drama</a></li>
                        <li><a href="lawSchool.jsp">Law School</a></li>
                        <li><a href="mgmntSchool.jsp">Management School </a></li>
						 <li><a href="medicalSchool.jsp">School of Medicine</a></li>
						  <li><a href="dramaSchool.jsp">School of Music</a></li>
                        <li><a href="lawSchool.jsp">School of Public Health</a></li>
                        <li><a href="mgmntSchool.jsp">School of Art </a></li>
						 <li><a href="medicalSchool.jsp">School of Engineering And Applied Science</a></li>
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
        <li><a href="admission.jsp">ADMISSIONS </a>
                   
        </li>
        <li><a href="#">HEALTH AND MEDICINE</a>
        <ul>
				<li><a href="medicine.jsp">School of Medicine</a></li>
                        <li><a href="nursing.jsp">School of Nursing</a></li>
                        <li><a href="#">School of Public Health</a></li>
                        <li><a href="#">Cancer Center</a></li>
						 <li><a href="#">Child Study Center</a></li>
						  <li><a href="#">You Page Mental Health Center</a></li>
                        <li><a href="#">Your Page Laboratory</a></li>
                        <li><a href="#">Medical Library</a></li>
						 <li><a href="#">Your Page Haven Children Hospital</a></li>
                    </ul></li>
		<li><a href="research.jsp">RESEARCH</a></li>
		 <li><a href="student.jsp">STUDENT LIFE</a></li>
		  <li><a href="faculty.jsp">FACULTY</a></li>
        <li><a href="contact.jsp" >CONTACT</a></li>
		<li><a href="about.jsp" class="last">ABOUT US</a></li>
    </ul>
</div>
<center>
<div id="mygallery" class="stepcarousel">

<div class="belt">

<div class="panel">
<img src="img/fac1.JPG" height="350px" width="1000px" />
</div>

<div class="panel">
<img src="img/fac2.JPG" height="350px" width="1000px" />
</div>

<div class="panel">
<img src="img/fac3.JPG" height="350px" width="1000px" />
</div>

</div>
</div>

</div>

</center>

<div class="con">
<div class="rows">
  <h2>  QuicK Links</h2>
<ul>
        <li><a href="facultyProfile.jsp">Faculty Profile</a></li>
		<li><a href="#">Faculty By experties</a></li>
		 <li><a href="#">Faculty News</a></li>
		  <li><a href="#">Faculty Portal</a></li>
        <li><a href="#" >Faculty Office Hours</a></li>
		<li><a href="#" class="last">Faculty WorkShop</a></li>
    </ul>

</div>
<div class="rows">
<table>
<tr>
<td>
<h2>IN CLASS. INVOLVED</h2>
</td>
</tr>
<tr>
<td>
Our School reputation for academic excellence is grounded in the scholarship of our faculty<br>
which routinely draws accolades from the legal academy and beyond.
Our professors<br> are also leaders in a wide range of disciplines, actively engaged <br> 
as theorists, practitioners, policymakers, and commentators. We pride ourselves on the fact<br>
 that our scholars live in the real world, not in an ivory tower.<br>
 They pursue matters that are before courts and regulatory agencies,<br>
  testify before lawmakers, serve on commissions, and advise government entities,<br>
   NGOs, and other organizations. Students reap the benefits, as faculty members draw<br>on their research and real-world experience in the classroom.<br>
Go to our faculty profiles to find out more,<br> and follow some of our faculty on Twitter,<br>
 where they comment on everything from law and policy to sports and pop culture.
</td>
</tr>
</table>
</div>
<div class="rows">
<table border ="1" cellpadding=0 cellspacing=0 height="100px">
<tr>
</tr>
<tr>
<td bgcolor="gray"><font face="Arial" color="#F0F8FF" size="2">Spring 2015 Colliqual</font>
</td>
</tr>
<tr>
<td><font face="Arial" color="BLACK" size="1">
<ul>
        <li><a href="#">Our School has ten colloquia,</a></li>
		<li>rigorous meta-seminars </li>
		 <li>convened by faculty in their </li>
		  <li>areas of specialty. Here are the </li>
        <li>ones being offered this Spring:</li>
		<li><a href="#">Colloquium on Culture and the Law</a></li>
		<li>Professor Winson </li>
		<li>Faculty By experties</li>
		 <li>Faculty News</li>
		  <li>Faculty Portal</li>
        <li><a href="#" >Colloquium on Constitutional History</a></li>
		<li>Professors William Nelson </li>
		<li>and John Phillip Reid</a></li>
		<li><a href="#">Innovation Policy Colloquium</a></li>
		<li>Professors Jeanne Fromer </li>
		<li>and Christopher Jon Sprigman</li>
		 <li>Professor Benedict Kingsbury </li>
		  <li>and Adjunct Professor Harlan </a></li>
    
    </ul></font>
</td>
</tr></table>

</div>
</div>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<div id="footer">
Copyright © meenakshiSharma.com
</div>
</body>
</html>