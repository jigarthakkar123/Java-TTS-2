<%@page import="com.bean.Employee"%>
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
	Employee e=(Employee)request.getAttribute("e");
%>
<form name="emp" method="post" action="EmpController">
	<table>
		<tr>
			<td><input type="hidden" name="eid" value="<%=e.getEid()%>"></td>
		</tr>
		<tr>
			<td>First Name</td>
			<td><input type="text" name="fname" value="<%=e.getEpinfo().getFname()%>"></td>
		</tr>
		<tr>
			<td>Last Name</td>
			<td><input type="text" name="lname" value="<%=e.getEpinfo().getLname()%>"></td>
		</tr>
		<tr>
			<td>Email</td>
			<td><input type="text" name="email" value="<%=e.getEpinfo().getEmail()%>"></td>
		</tr>
		<tr>
			<td>Job</td>
			<td><input type="text" name="job" value="<%=e.getJob()%>"></td>
		</tr>
		<tr>
			<td>Department</td>
			<td><input type="text" name="dept" value="<%=e.getDept()%>"></td>
		</tr>
		<tr>
			<td>Salary</td>
			<td><input type="text" name="salary" value="<%=e.getSalary()%>"></td>
		</tr>
		<tr>
			<td colspan="2" align="Center">
				<input type="submit" name="action" value="Update EMP">
			</td>
		</tr>
	</table>
</form>

</body>
</html>