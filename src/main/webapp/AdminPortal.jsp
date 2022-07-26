<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		  <meta charset="utf-8">
		  <meta charset="utf-8">
		  <meta name="viewport" content="width=device-width, initial-scale=1">
		  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
		  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
		  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
		  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
		<title>Admin Portal</title>
	</head>
	<body>
		<h1>Admin Portal</h1>
		<form name="logout"  method="get" action="AdminLogin.jsp">
        	<input type="submit" value="Logout" >
    	</form>
		<form name="addPatient"  method="get" action="AddPatient.jsp">
        	<input type="submit" value="Add New Patient" >
    	</form>
    	<form name="deletePatient"  method="get" action="DeletePatient.jsp">
        	<input type="submit" value="Delete Existing Patient" >
    	</form>
    	<br>
    	<form action="PatientPortal" method="post">
			<input type="text" placeholder="Report Id" name="reportid">
			<input type="submit" value="Search Report">
	</form>
    	<hr>
    	<br>
		<%
		try{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost/patientmanagementsystem","root","");
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery("SELECT * FROM patients");
			while(rs.next()){
		%>
		<table align = "center" border="1" width="100" style="width:100%" class="table table-dark table-striped"">
		<tbody>
			<tr>
				<th width="2%">ID</th>
				<th width="10%">Patient Name</th>
				<th width="3%">Age</th>
				<th width="5%">Gender</th>
				<th width="10%">Email</th>
				<th width="10%">Phone</th>
				<th width="10%">Aadhar No.</th>
				<th width="10%">Disease</th>
				<th width="8%">Report ID</th>
				<th width="10%">Report Status</th>
				<th width="10%">Medicine</th>
				<th width="10%">Note</th>
				<th width="5%">Action</th>
			</tr>
			<tr>
				<td><%=rs.getString(1) %></td>
				<td><%=rs.getString(2) %></td>
				<td><%=rs.getString(3) %></td>
				<td><%=rs.getString(4) %></td>
				<td><%=rs.getString(5) %></td>
				<td><%=rs.getString(6) %></td>
				<td><%=rs.getString(7) %></td>
				<td><%=rs.getString(8) %></td>
				<td><%=rs.getString(9) %></td>
				<td><%=rs.getString(10) %></td>
				<td><%=rs.getString(11) %></td>
				<td><%=rs.getString(12) %></td>
				<td><a href='Fetch.jsp?ReportId=<%=rs.getString("ReportId")%>' class="btn btn-danger">EDIT</a>
				</td>	
			</tr>	
		</tbody>
		</table>
		
		<%
			}
		}
		catch(Exception e){
			e.printStackTrace();
		}
		%>

	</body>
</html>
