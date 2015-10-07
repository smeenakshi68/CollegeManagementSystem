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
    margin:50px;
    background-color: none;
    padding-bottom: 1000px;
    margin-bottom: -1000px;
}

</style>

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
</td></tr>
<tr>
<td></td>
<td><font face="Courier" color="BLACK" size="6"><b>Academic Programs ><b>Academic Programs > Departments & Programs</b></font> </td><td></td>
</tr>
</table>
</div>
<hr>
<div class="con">

<div class="rows">
<table border ="0" cellpadding=10 cellspacing=3 height="200px">
<tr>
</tr>
<tr>
<td bgcolor="#d3d3d3 "><a href ="about.jsp"><font face="Arial" color="BLACK" size="4"><b>About</b></font></a>
</td>
</tr>

<tr>
<td>
<a href="departmentPrograms.jsp"><b><font face="Arial" color="BLUE" size="2">Departments & Programs</font></b></a>
</td>
</tr>
<tr>
<td>
<a href="academic.jsp"><font face="Arial" color="BLACK" size="2">Acadamic Program</font></a>
</td>
</tr>
<tr>
<td>
<a href="research.jsp"><font face="Arial" color="BLACK" size="2">Research</font></a>
</td>
</tr><tr>
<td>
<a href="lib.jsp"><font face="Arial" color="BLACK" size="2">Libraries</font></a>
</td>
</tr><tr>
<td>
<a href="#"><font face="Arial" color="BLACK" size="2">Museums & Galleries</font></a>
</td>
</tr>
<tr>
<td>
<a href="admission.jsp"><font face="Arial" color="BLACK" size="2">Admissions</font></a>
</td>
</tr>
<tr>
<td>
<a href="#"><font face="Arial" color="BLACK" size="2">Health & Medicine</font></a>
</td>
</tr>
<tr>
<td>
<a href="#"><font face="Arial" color="BLACK" size="2">Working at Your Page</font></a>
</td>
</tr>
<tr>
<td>
<a href="#"><font face="Arial" color="BLACK" size="2">News</font></a>
</td>
</tr></table>

</div>
<div class="rows">
  <h4>The following is a list of schools, departments, programs, and other academic offerings at Yale.<br> 
  Further information about programs in Your Page professional schools may be found on their Web sites.</h4>
<ul>
<li><b>A</b></li>
        <li><a href="#">Anthropology</a></li>
		<li><a href="#">Applied Mathematics</a></li>
		<li><b>B</b></li>
		 <li><a href="#">Biological & Biomedical Sciences</a></li>
		  <li><a href="#">Biomedical Engineering</a></li>
		  <li><b>C</b></li>
        <li><a href="#" >Computer Science</a></li>
		<li><a href="#">Chemical & Environmental Engineering</a></li>
    </ul>

</div>

</div>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<div id="footer">
<font face="Arial" color="BLACK" size="2">
Copyright © meenakshiSharma.com</font>
</div>
</body>
</html>