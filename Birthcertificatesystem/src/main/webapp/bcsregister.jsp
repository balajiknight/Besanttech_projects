<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
p {
	font-size: 40px;
	color: white;
}

body {
	background-color: blue;
	text-align: center;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@ page import="java.sql.*"%>

	<%
 String firstname =request.getParameter("fname");

  String lastname =request.getParameter("lname");
  
  String gender =request.getParameter("gen");
  
  String dateofbirth =request.getParameter("dob");
  
  String mobilenumber =request.getParameter("mno");
  
  String address =request.getParameter("address");

  String emailaddress =request.getParameter("email");
  
  String password =request.getParameter("pw");

  
  try
  {
	    Class.forName("com.mysql.cj.jdbc.Driver");
	    
	    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sampledb1","root","nhfhdysfdks@mysql23");
	    
	     
	    Statement st=con.createStatement();
	    
	    String query="insert into birthcertificate values('"+firstname+"','"+lastname+"','"+gender+"','"+dateofbirth+"','"+mobilenumber+"','"+address+"','"+emailaddress+"','"+password+"')";
	    
	    st.executeUpdate(query);
	    
	    out.print("<p>Data Insert Success Fully</p>");
	    
  }
  
  catch(Exception e)
  {
	  out.print(e);
  }
%>

	<p>Birth certificate system Welcomes you</p>
</body>
</html>