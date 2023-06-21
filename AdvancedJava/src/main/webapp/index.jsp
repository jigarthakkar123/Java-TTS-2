<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
<script src="js/validation.js">

</script>
</head>
<body>
<form name="frm" method="post" action="">
	<table>
		<tr>
			<td>First Name</td>
			<td><input type="text" name="fname" onblur="checkFname();"></td>
			<td><span id="fname"></span></td>
		</tr>
		<tr>
			<td>Last Name</td>
			<td><input type="text" name="lname"></td>
		</tr>
		<tr>
			<td>Email</td>
			<td><input type="text" name="email" onblur="checkEmail();"></td>
			<td><span id="email"></span></td>
		</tr>
		<tr>
			<td>Mobile</td>
			<td><input type="text" name="mobile" onblur="checkMobile();"></td>
			<td><span id="mobile"></span></td>
		</tr>
		<tr>
			<td>Address</td>
			<td><textarea rows="5" cols="21" name="address"></textarea></td>
		</tr>
		<tr>
			<td>Education</td>
			<td>
				<select name="education">
					<option>---Select Education---</option>
					<option value="10th">10th</option>
					<option value="12th">12th</option>
					<option value="BE">BE</option>
					<option value="ME">ME</option>
					<option value="BCA">BCA</option>
					<option value="MCA">MCA</option>
				</select>
			</td>
		</tr>
		<tr>
			<td>Gender</td>
			<td>
				<input type="radio" name="gender" value="male">Male
				<input type="radio" name="gender" value="female">Female
			</td>
		</tr>
		<tr>
			<td>Hobby</td>
			<td>
				<input type="checkbox" name="hobby" value="Music">Music<br>
				<input type="checkbox" name="hobby" value="Reading">Reading<br>
				<input type="checkbox" name="hobby" value="Cricket">Cricket<br>
				<input type="checkbox" name="hobby" value="Traveling">Traveling
			</td>
		</tr>
		<tr>
			<td>Resume</td>
			<td><input type="file" name="resume"></td>
		</tr>
		<tr>
			<td>Password</td>
			<td><input type="password" name="password" onblur="checkPassword();"></td>
			<td><span id="password"></span></td>
		</tr>
		<tr>
			<td>Confirm Password</td>
			<td><input type="password" name="cpassword" onblur="checkCPassword();"></td>
			<td><span id="cpassword"></span></td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="submit" name="action" value="SUBMIT" class="btn btn-link">
			</td>
		</tr>
	</table>
</form>
</body>
</html>