<%@page import="com.jsp.project.dao.GetQuires"%>
<%@page import="com.jsp.project.been.Employee"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search Employee</title>
<link rel="stylesheet" type="text/css" href="css/tablejsp.css">
</head>
<body>
<h1>Searched Employee</h1>
	<% String name = request.getParameter("name");
		Employee em = GetQuires.isSearch(name);
	%>
<table>
		<tr>
		<th>Id</th>
		<th>Name</th>
		<th>City</th>
		<th>Mobile</th>
		<th>Update</th>
		<th>Delete</th>
		</tr>
		<tr>
			<td><%= em.getId()%></td>
			<td><%= em.getName()%></td>
			<td><%= em.getCity()%></td>
			<td><%= em.getMobile()%></td>
			<td>
                    <form action="OperationServlet" method="post">
                        <input type="hidden" name="operation" value="up">
                        <input type="hidden" name="id" value="<%= em.getId() %>">
                        <input type="submit" value="Update" class="button">
                    </form>
                </td>
                <td>
                    <form action="OperationServlet" method="post">
                        <input type="hidden" name="operation" value="delete">
                        <input type="hidden" name="id" value="<%= em.getId() %>">
                        <input type="submit" value="Delete" style="border-radius: 10px 30px; background-color: #f44336; color: white; border: none; padding: 8px 15px; cursor: pointer;">

                    </form>
                </td>
			</tr>
	</table>
	<div class="button-container">
    <button onclick="window.location.href='insert.jsp'" class="button1">Back to Main Form</button>
</div>
</body>
</html>