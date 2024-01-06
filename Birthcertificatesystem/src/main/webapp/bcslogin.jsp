<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.sql.*" %>  

<%

  String firstname=request.getParameter("fname");
  
  String mobilenumber=request.getParameter("mno");
  
  
  try
  {
	    Class.forName("com.mysql.cj.jdbc.Driver");
	    
	    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sampledb1","root","nhfhdysfdks@mysql23");
	    
	    
	    Statement st=con.createStatement();
	    
	    ResultSet rs=st.executeQuery("select * from Birthcertificate");
	    
	    int flag=0;
	    
	    while(rs.next())
	    {
	    	if(firstname.equals(rs.getString(1)) && mobilenumber.equals(rs.getString(5)))
	    	{
	    		flag=1;
	    	}
	    	
	    	
	    }
	    
	    if(flag==1)
	    {
	    	out.print("Login Success");
	    	out.print("Your First Name is "+firstname);
	    	out.print("Your Mobile Number is "+mobilenumber);
	    	
	    
	    	
	    }
	    
	    else
	    {
	    	out.print("Invalid First Name and Mobile Number");
	    }
	    
  }
  
  catch(Exception e)
  {
	  out.print(e);
  }
%>

</body>
</html>