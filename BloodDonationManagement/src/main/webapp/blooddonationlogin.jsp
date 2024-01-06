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

String name=request.getParameter("name");
 String emailaddress=request.getParameter("email");

  
  
  try
  {
	    Class.forName("com.mysql.cj.jdbc.Driver");
	    
	    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sampledb1","root","nhfhdysfdks@mysql23");
	    
	    
	    Statement st=con.createStatement();
	    
	    ResultSet rs=st.executeQuery("select * from BloodDonations");
	    
	    int flag=0;
	    
	    while(rs.next())
	    {
	    	if( name.equals(rs.getString(1)) && emailaddress.equals(rs.getString(6)))
	    	{
	    		flag=1;
	    	}
	    	
	    	
	    }
	    
	    if(flag==1)
	    {
	    	out.print("Login Success");
	    	out.print("Your  Name is "+name);
	    	out.print("Your Email Address is "+emailaddress);
	    	
	    
	    	
	    }
	    
	    else
	    {
	    	out.print("Invalid Name and EmailId");
	    }
	    
  }
  
  catch(Exception e)
  {
	  out.print(e);
  }
%>

</body>
</html>