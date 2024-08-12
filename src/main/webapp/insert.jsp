<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Information</title>
<link rel="stylesheet" type="text/css" href="css/insertjsps.css">
</head>
<body>
	<div class="content">
		<div class="search-section">
			<h2>Search Employee</h2>
			<form action="OperationServlet" method="post" class="f1">
				<input type="hidden" name="operation" value="DataSearch">

				<div class="wave-group">
					<input type="text" name="name" class="input" placeholder=" "
						required="required"> <label class="label"> <span
						class="label-char" style="--index: 0">E</span> <span
						class="label-char" style="--index: 1">n</span> <span
						class="label-char" style="--index: 2">t</span> <span
						class="label-char" style="--index: 3">e</span> <span
						class="label-char" style="--index: 4">r</span> <span
						class="label-char" style="--index: 5"> </span> <span
						class="label-char" style="--index: 6">N</span> <span
						class="label-char" style="--index: 7">a</span> <span
						class="label-char" style="--index: 8">m</span> <span
						class="label-char" style="--index: 9">e</span> <span
						class="label-char" style="--index: 10">:</span>
					</label>
					<div class="bar"></div>
				</div>

				<br>
				<br> <input type="submit" value="Search" class="button">
			</form>
			<h1>Data Fetch</h1>
			<form action="OperationServlet" method="post" class="f">
				<input type="hidden" name="operation" value="DataFetch"> <input
					type="submit" value="Fetch" class="button">
			</form>
		</div>
		<div class="form-section">
			<h1>Employee Information</h1>
			<form action="OperationServlet" method="post">
				<input type="hidden" name="operation" value="insert">

				<div class="wave-group">
					<input type="number" name="id" class="input" placeholder=" "
						required="required"> <label class="label"> <span
						class="label-char" style="--index: 0">E</span> <span
						class="label-char" style="--index: 1">n</span> <span
						class="label-char" style="--index: 2">t</span> <span
						class="label-char" style="--index: 3">e</span> <span
						class="label-char" style="--index: 4">r</span> <span
						class="label-char" style="--index: 5"> </span> <span
						class="label-char" style="--index: 6">I</span> <span
						class="label-char" style="--index: 7">d</span> <span
						class="label-char" style="--index: 8">:</span>
					</label>
					<div class="bar"></div>
				</div>

				<br>
				<br>

				<div class="wave-group">
					<input type="text" name="name" class="input" placeholder=" "
						required="required"> <label class="label"> <span
						class="label-char" style="--index: 0">E</span> <span
						class="label-char" style="--index: 1">n</span> <span
						class="label-char" style="--index: 2">t</span> <span
						class="label-char" style="--index: 3">e</span> <span
						class="label-char" style="--index: 4">r</span> <span
						class="label-char" style="--index: 5"> </span> <span
						class="label-char" style="--index: 6">N</span> <span
						class="label-char" style="--index: 7">a</span> <span
						class="label-char" style="--index: 8">m</span> <span
						class="label-char" style="--index: 9">e</span> <span
						class="label-char" style="--index: 10">:</span>
					</label>
					<div class="bar"></div>
				</div>

				<br>
				<br>

				<div class="wave-group">
					<input type="text" name="city" class="input" placeholder=" "
						required="required"> <label class="label"> <span
						class="label-char" style="--index: 0">E</span> <span
						class="label-char" style="--index: 1">n</span> <span
						class="label-char" style="--index: 2">t</span> <span
						class="label-char" style="--index: 3">e</span> <span
						class="label-char" style="--index: 4">r</span> <span
						class="label-char" style="--index: 5"> </span> <span
						class="label-char" style="--index: 6">C</span> <span
						class="label-char" style="--index: 7">i</span> <span
						class="label-char" style="--index: 8">t</span> <span
						class="label-char" style="--index: 9">y</span> <span
						class="label-char" style="--index: 10">:</span>
					</label>
					<div class="bar"></div>
				</div>

				<br>
				<br>

				<div class="wave-group">
					<input type="text" name="mobile" class="input" placeholder=" "
						required="required"> <label class="label"> <span
						class="label-char" style="--index: 0">E</span> <span
						class="label-char" style="--index: 1">n</span> <span
						class="label-char" style="--index: 2">t</span> <span
						class="label-char" style="--index: 3">e</span> <span
						class="label-char" style="--index: 4">r</span> <span
						class="label-char" style="--index: 5"> </span> <span
						class="label-char" style="--index: 6">N</span> <span
						class="label-char" style="--index: 7">u</span> <span
						class="label-char" style="--index: 8">m</span> <span
						class="label-char" style="--index: 9">b</span> <span
						class="label-char" style="--index: 10">e</span> <span
						class="label-char" style="--index: 11">r</span> <span
						class="label-char" style="--index: 12">:</span>
					</label>
					<div class="bar"></div>
				</div>

				<br>
				<br>

				<center>
					<input type="submit" value="Insert" class="button">
				</center>
			</form>

			
		</div>
	</div>
</body>
</html>
