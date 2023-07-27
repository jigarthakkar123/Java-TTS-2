<%@page import="com.bean.Student"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
<title>Insert title here</title>
<style type="text/css">
tr,td
{
	padding:10px;
}
</style>
</head>
<body>
<%

	if(request.getAttribute("msg")!=null)
	{
		out.println(request.getAttribute("msg"));
	}
	Student s=(Student)request.getAttribute("s");
%>
<form name="update" method="post" action="StudentController">
<table>
	<tr>
		<td><input type="hidden" name="id" value="<%=s.getId()%>"></td>
	</tr>
	<tr>
		<td>First Name</td>
		<td><input type="text" name="fname" value="<%=s.getFname()%>"></td>
	</tr>
	<tr>
		<td>Last Name</td>
		<td><input type="text" name="lname" value="<%=s.getLname()%>"></td>
	</tr>
	<tr>
		<td>Email</td>
		<td><input type="text" name="email" value="<%=s.getEmail()%>"></td>
	</tr>
	<tr>
		<td>Mobile</td>
		<td><input type="text" name="mobile" value="<%=s.getMobile()%>"></td>
	</tr>
	
	<tr>
		<td colspan="2" align="center">
			<input type="submit" name="action" value="Update" class="btn btn-primary">
		</td>
	</tr>
</table>
</form>

</body>
</html>