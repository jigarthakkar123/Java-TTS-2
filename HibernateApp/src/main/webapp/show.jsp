<%@page import="com.dao.StudentDao"%>
<%@page import="com.bean.Student"%>
<%@page import="java.util.List"%>
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
%>
<table border="5" width="100%">
	<tr>
		<th>ID</th>
		<th>FIRST NAME</th>
		<th>LAST NAME</th>
		<th>EMAIL</th>
		<th>MOBILE</th>
		<th>EDIT</th>
		<th>DELETE</th>
	</tr>
	<%
		List<Student> list=StudentDao.getAllStudent();
		for(Student s:list)
		{
	%>
	<tr>
		<td><%=s.getId() %></td>
		<td><%=s.getFname() %></td>
		<td><%=s.getLname() %></td>
		<td><%=s.getEmail() %></td>
		<td><%=s.getMobile() %></td>
		<td>
			<form name="edit" method="post" action="StudentController">
				<input type="hidden" name="id" value="<%=s.getId()%>">
				<input type="submit" name="action" value="EDIT" class="btn btn-primary">
			</form>
		</td>
		<td>
			<form name="delete" method="post" action="StudentController">
				<input type="hidden" name="id" value="<%=s.getId()%>">
				<input type="submit" name="action" value="DELETE" class="btn btn-danger">
			</form>
		</td>
	</tr>
	<%		
		}
	%>
</table>
<a href="index.jsp">Add New Student</a>
</body>
</html>