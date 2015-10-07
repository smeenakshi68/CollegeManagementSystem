<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.io.*" %>
<%@ page language="java" import="java.sql.*,com.ConnectionMySql" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%! 
     PreparedStatement pstmt=null;
	 ResultSet rs=null; 
	 Statement stmt=null;
	 PreparedStatement pstmt1=null;
	 PreparedStatement pstmt2=null;
	 ResultSet rs1=null,rs2=null; 
	 Statement stmt1=null;
	 ConnectionMySql con = null;
	int ctr,ext,ltrim;
String doc1,doc2,doc3,doc4,doc5,doc6,doc7,doc8,doc9,doc10,doc11,doc12,doc13,doc14,doc15,doc16,doc17,doc18,doc19,doc20,ref_id;
	String name,saveFile="";%>
<%
try
{
con = new ConnectionMySql();
stmt=con.getConnection().createStatement();
stmt1=con.getConnection().createStatement();
ref_id  = (String)session.getAttribute("id");
String contentType = request.getContentType();
if ((contentType != null) && (contentType.indexOf("multipart/form-data") >= 0)) {
DataInputStream in = new DataInputStream(request.getInputStream());
int formDataLength = request.getContentLength();
byte dataBytes[] = new byte[formDataLength];
int byteRead = 0;
int totalBytesRead = 0;
while (totalBytesRead < formDataLength) {
byteRead = in.read(dataBytes, totalBytesRead,formDataLength);
totalBytesRead += byteRead;
}
String file = new String(dataBytes);
saveFile = file.substring(file.indexOf("filename=\"") + 10);
saveFile = saveFile.substring(0, saveFile.indexOf("\n"));
saveFile = saveFile.substring(saveFile.lastIndexOf("\\") + 1,saveFile.indexOf("\""));
int lastIndex = contentType.lastIndexOf("=");
String boundary = contentType.substring(lastIndex + 1,contentType.length());
int pos;
pos = file.indexOf("filename=\"");
pos = file.indexOf("\n", pos) + 1;
pos = file.indexOf("\n", pos) + 1;
pos = file.indexOf("\n", pos) + 1;
int boundaryLocation = file.indexOf(boundary, pos) - 4;
int startPos = ((file.substring(0, pos)).getBytes()).length;
int endPos = ((file.substring(0, boundaryLocation)).getBytes()).length;
ltrim = saveFile.lastIndexOf("/")+1;
ext = saveFile.lastIndexOf(".");
name = saveFile.substring(ltrim,ext);
name = ref_id +".jpg";
java.io.File file2 = new File(config.getServletContext().getRealPath("/")+"img/");
saveFile=file2+"/"+name;
File f = new File(saveFile);
FileOutputStream fileOut = new FileOutputStream(f);
fileOut.write(dataBytes, startPos, (endPos - startPos));
fileOut.flush();
fileOut.close();
//response.sendRedirect("../pdg/documents_check_list.jsp");

}} catch(Exception e){System.out.println(e);}
%>
</body>
</html>