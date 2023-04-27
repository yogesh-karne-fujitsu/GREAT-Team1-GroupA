<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>

<head>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<!-- jQuery library -->
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
<!-- Popper JS -->
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<!-- Latest compiled JavaScript -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<meta charset="ISO-8859-1">
<title>mail page</title>

</head>

<body>
<form method="POST" action="Mail" >

					<h2 class="card-header"">Send Mail:</h2>
				<table style="width: 50%;" table table-hover";align="left">
					<tr>
						
						<td class="emailId"><b>Send to:</b><span class="text-dark">*</span></td>
						<td><input name="mailId" id="mailId"
							placeholder="Mail ID"  required></td>
					</tr>

					<tr>
						<td ><b>Description</b><span class="text-dark">*</span></td>
						<td><input name="description" id="description"
							 size="50"  style="height:200px" required></td>
						
				</table>
				
					<button type="submit" class="btn btn-outline-success">MAIL</button>
				</form>
           
</body>
</html>