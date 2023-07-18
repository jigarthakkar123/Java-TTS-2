<%@page import="com.dao.EmpDao"%>
<%@page import="com.bean.Employee"%>
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
		<th>EPID</th>
		<th>FIRST NAME</th>
		<th>LAST NAME</th>
		<th>EMAIL</th>
		<th>EID</th>
		<th>JOB</th>
		<th>DEPT</th>
		<th>SALARY</th>
		<th>EDIT</th>
		<th>DELETE</th>
	</tr>
	<%
		List<Employee> list=EmpDao.getAllEmployee();
		for(Employee e:list)
		{
	%>
	<tr>
		<td><%=e.getEpinfo().getEpid() %></td>
		<td><%=e.getEpinfo().getFname() %></td>
		<td><%=e.getEpinfo().getLname() %></td>
		<td><%=e.getEpinfo().getEmail() %></td>
		<td><%=e.getEid() %></td>
		<td><%=e.getJob() %></td>
		<td><%=e.getDept() %></td>
		<td><%=e.getSalary() %></td>
		<td>
			<form name="edit" method="post" action="EmpController">
				<input type="hidden" name="eid" value="<%=e.getEid()%>">
				<input type="submit" name="action" value="EDIT" class="btn btn-primary">
			</form>
		</td>
		<td>
			<form name="delete" method="post" action="EmpController">
				<input type="hidden" name="eid" value="<%=e.getEid()%>">
				<input type="submit" name="action" value="DELETE" class="btn btn-danger">
			</form>
		</td>
	</tr>
	<%		
		}
	%>
</table>
<a href="Emp.jsp">Add New Employee</a>
</body>
</html>