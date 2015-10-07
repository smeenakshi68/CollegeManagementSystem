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
position: relative; /*leave this value alone*/
border: none;
overflow: scroll; /*leave this value alone*/
width: 1000px; /*Width of Carousel Viewer itself*/
height: 300px; /*Height should enough to fit largest content's height*/
-webkit-box-sizing: border-box; /* set box model so container width and height value includes any padding/border defined */
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
    
 <script type="text/javascript" >
 function validateForm()
 {
 	if(frmMain.query.value =="")
 	{
 	    alert("Enter keyword to search");
 	    frmMain.query.focus();
 		return;
 	}	
 	frmMain.action="search.jsp";
     frmMain.submit();
 	
 }

 </script>
</head>
<body >
<form name="frmMain" id ="frmMain" method ="post">
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
<input type= "image" name="search" value="Submit" style="height:35px;width=35px;" src="img/search.jpg" onClick="validateForm()"/>
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
</form>
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
<img src="img/arch1.JPG" height="350px" width="1000px" />
</div>



</div>
</div>

</div>

</center>

<div class="con">
<div class="rows">
<table border ="1" cellpadding=10 cellspacing=3 height="200px" bgcolor="blue">
<tr>
</tr>
<tr>
<td ><a href ="#"><font face="Arial" color="WHITE" size="3">Funding Opportunities</font></a>
</td>
</tr>
<tr>
<td>
<b><a href="#"><font face="Arial" color="WHITE" size=2">PI Handbook</font></a></b>
</td>
</tr>
<tr>
<td>
<a href="#"><font face="Arial" color="WHITE" size="2">HU Research Policies</font></a>
</td>
</tr><tr>
<td>
<a href="#"><font face="Arial" color="WHITE" size="2">Research</font></a>
</td>
</tr><tr>
<td>
<a href="#"><font face="Arial" color="WHITE" size="2">Agency Policies &<br> 
Guidelines</font></a>
</td>
</tr><tr>
<td>
<a href="#"><font face="Arial" color="WHITE" size="2">Related Links</font></a>
</td>
</tr>
<tr>
<td>
<a href="#"><font face="Arial" color="WHITE" size="2">Certification and Training</font></a>
</td>
</tr>
<tr>
<td>
<a href="#"><font face="Arial" color="WHITE" size="2">Frequently Asked Questions</font></a>
</td>
</tr>
</table>
</div>
<div class="rows">
<table border ="0" cellpadding=2 cellspacing=3 >


<tr>
<td><a href="#"><img src="img/rp1.JPG" height="250px" width="250px" /></a></td>
<td><a href="#"><img src="img/rp2.JPG" height="250px" width="250px" /></a></td>
<td><a href="#"><img src="img/rp3.JPG" height="250px" width="250px" /></a>
</td>
</tr>
<tr>
<td><a href="#"><img src="img/res1.JPG" height="250px" width="250px" /></a>
</td>
<td><a href="#"><img src="img/res2.JPG" height="250px" width="250px" /></a>
</td>
<td><a href="#"><img src="img/res3.JPG" height="250px" width="250px" /></a>
</td>
</tr>
<tr>
<td><a href="#"><img src="img/res4.JPG" height="250px" width="250px" /></a>
</td>
<td><a href="#"><img src="img/res5.JPG" height="250px" width="250px" /></a>
</td>
<td><a href="#"><img src="img/res6.JPG" height="250px" width="250px" /></a>
</td>
</tr>
<tr>
<td>
</td>
</tr>
<tr>
<td>
<a href="#"><img src="img/res7.JPG" height="250px" width="250px" /></a>
</td>
<td><a href="#"><img src="img/res8.JPG" height="250px" width="250px" /></a>
</td>
<td><a href="#"><img src="img/res9.JPG" height="250px" width="250px" /></a>
</td>

</tr>
<tr><td></td></tr>

</table>
</div>

</div>
</center>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<div id="footer">
Copyright © meenakshiSharma.com
</div>
</body>
</html>