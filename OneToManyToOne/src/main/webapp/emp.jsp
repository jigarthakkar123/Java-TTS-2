<%@page import="com.dao.DeptDao"%>
<%@page import="com.bean.Dept"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form name="dept" method="post" action="DeptController">
	<table>
		<tr>
			<td>Select Department</td>
			<td>
				<select name="dept">
					<option>---Select Department---</option>
					<%
						List<Dept> list=DeptDao.getAllDept();
						for(Dept d:list)
						{
					%>
							<option value="<%=d.getDid()%>"><%=d.getDname() %></option>
					<%		
						}
					%>
				</select>
			</td>
		</tr>
		<tr>
			<td>First Name</td>
			<td><input type="text" name="fname"></td>
		</tr>
		<tr>
			<td>Last Name</td>
			<td><input type="text" name="lname"></td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="submit" name="action" value="Insert Emp">
			</td>
		</tr>
	</table>
</form>
</body>
</html>