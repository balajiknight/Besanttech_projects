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
	String name = request.getParameter("name");

	String fatherName = request.getParameter("fname");
	String motherName = request.getParameter("mname");

	String mobilenumber = request.getParameter("mno");

	String gender = request.getParameter("gen");

	String email = request.getParameter("email");

	String bloodgroup = request.getParameter("bg");

	String address = request.getParameter("address");

	try {
		Class.forName("com.mysql.cj.jdbc.Driver");

		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sampledb1", "root",
		"nhfhdysfdks@mysql23");

		Statement st = con.createStatement();

		String query = "insert into BloodDonations values('" + name + "','" + fatherName + "','" + motherName + "','" + mobilenumber + "','" + gender + "','" + email + "','" + bloodgroup + "','" +  address + "')";

		st.executeUpdate(query);

		out.print("<p>Data Insert Success Fully</p>");

	}

	catch (Exception e) {
		out.print(e);
	}
	%>

	<p>Blood Donation Welcomes you</p>
</body>
</html>