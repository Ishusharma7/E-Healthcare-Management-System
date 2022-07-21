<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Add New Patient | Hospital</title>
	</head>
	<body>
	<h1>Patient's Details</h1>
		<form action="add" method="post">
			Patient Name : <input type="text" placeholder="John Doe" name="name" required><br><br>
			Patient Age : <input type="text" placeholder="XX" name="age" required><br><br>
			<label for="gender">Gender :  </label>
				Male<input type="radio" name="gender" id="gender" value="Male">
				Female<input type="radio" name="gender" id="gender" value="Female"> 
				Other<input type="radio" name="gender" id="gender" value="Other"><br><br>
		    Patient Email : <input type="text" placeholder="abc@xyz.com" name="email" required><br><br>
			Patient Phone No : <input type="text" placeholder="XXX XXX XXXX" name="phone" required><br><br>
			Patient Aadhar No : <input type="text" placeholder="XXXX XXXX XXXX" name="aadhar" required><br><br>
			Patient Disease : <input type="text" placeholder="Disease" name="disease" required><br><br>
			Report Id : <input type="text" placeholder="Report Id" name="reportid" required><br><br>
			Report Status : <input type="text" placeholder="Status" name="status"><br><br>
			Medicine Recommendation (If any) : <input type="text" placeholder="Medicine Recommendation" name="medicine"><br><br>
			Note : <input type="text" placeholder="Other note" name="note"><br><br>
			<input type="submit" value="Submit Details">
		</form>
	</body>
</html>
