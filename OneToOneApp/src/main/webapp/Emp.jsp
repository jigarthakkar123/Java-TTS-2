<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
</head>
<body>
<form name="emp" method="post" action="EmpController">
	<table>
		<tr>
			<td>First Name</td>
			<td><input type="text" name="fname"></td>
		</tr>
		<tr>
			<td>Last Name</td>
			<td><input type="text" name="lname"></td>
		</tr>
		<tr>
			<td>Email</td>
			<td><input type="text" name="email"></td>
		</tr>
		<tr>
			<td>Job</td>
			<td><input type="text" name="job"></td>
		</tr>
		<tr>
			<td>Department</td>
			<td><input type="text" name="dept"></td>
		</tr>
		<tr>
			<td>Salary</td>
			<td><input type="text" name="salary"></td>
		</tr>
		<tr>
			<td colspan="2" align="Center">
				<input type="submit" name="action" value="Insert EMP">
			</td>
		</tr>
	</table>
</form>
</body>
</html>