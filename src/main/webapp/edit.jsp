<%@page import="com.jsp.project.dao.GetQuires"%>
<%@page import="com.jsp.project.been.Employee"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update</title>
<link rel="stylesheet" type="text/css" href="css/insertjsps.css">
</head>
<body>
	<% 
	    int id = Integer.parseInt(request.getParameter("id"));
	    Employee em = GetQuires.isUpdate(id);
	%>
	
	<h1>Employee Information Update</h1>
    <form action="OperationServlet" method="post">
        <input type="hidden" name="operation" value="edite">
        <input type="hidden" name="id" value="<%= em.getId() %>">
        
        <div class="wave-group">
            <input type="text" name="name" class="input" value="<%= em.getName() %>" placeholder=" " required="required">
            <label class="label">
                <span class="label-char" style="--index: 0">U</span>
                <span class="label-char" style="--index: 1">p</span>
                <span class="label-char" style="--index: 2">d</span>
                <span class="label-char" style="--index: 3">a</span>
                <span class="label-char" style="--index: 4">t</span>
                <span class="label-char" style="--index: 5">e</span>
                <span class="label-char" style="--index: 6"> </span>
                <span class="label-char" style="--index: 7">N</span>
                <span class="label-char" style="--index: 8">a</span>
                <span class="label-char" style="--index: 9">m</span>
                <span class="label-char" style="--index: 10">e</span>
                <span class="label-char" style="--index: 11">:</span>
            </label>
            <div class="bar"></div>
        </div>

        <br><br>

        <div class="wave-group">
            <input type="text" name="city" class="input" value="<%= em.getCity() %>" placeholder=" " required="required">
            <label class="label">
                <span class="label-char" style="--index: 0">U</span>
                <span class="label-char" style="--index: 1">p</span>
                <span class="label-char" style="--index: 2">d</span>
                <span class="label-char" style="--index: 3">a</span>
                <span class="label-char" style="--index: 4">t</span>
                <span class="label-char" style="--index: 5">e</span>
                <span class="label-char" style="--index: 6"> </span>
                <span class="label-char" style="--index: 7">C</span>
                <span class="label-char" style="--index: 8">i</span>
                <span class="label-char" style="--index: 9">t</span>
                <span class="label-char" style="--index: 10">y</span>
                <span class="label-char" style="--index: 11">:</span>
            </label>
            <div class="bar"></div>
        </div>

        <br><br>

        <div class="wave-group">
            <input type="text" name="mobile" class="input" value="<%= em.getMobile() %>" placeholder=" " required="required">
            <label class="label">
                <span class="label-char" style="--index: 0">U</span>
                <span class="label-char" style="--index: 1">p</span>
                <span class="label-char" style="--index: 2">d</span>
                <span class="label-char" style="--index: 3">a</span>
                <span class="label-char" style="--index: 4">t</span>
                <span class="label-char" style="--index: 5">e</span>
                <span class="label-char" style="--index: 6"> </span>
                <span class="label-char" style="--index: 7">M</span>
                <span class="label-char" style="--index: 8">o</span>
                <span class="label-char" style="--index: 9">b</span>
                <span class="label-char" style="--index: 10">i</span>
                <span class="label-char" style="--index: 11">l</span>
                <span class="label-char" style="--index: 12">e</span>
                <span class="label-char" style="--index: 13">:</span>
            </label>
            <div class="bar"></div>
        </div>

        <br><br>

        <center>
            <input type="submit" value="Update" class="button">
        </center>
    </form>
</body>
</html>
