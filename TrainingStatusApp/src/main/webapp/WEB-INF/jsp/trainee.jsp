<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>

<head>
<meta charset="ISO-8859-1">
<title>Trainee page</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://code.jquery.com/jquery-3.6.1.min.js" integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ=" crossorigin="anonymous"></script>
<!-- <script
	src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script> -->
<!-- Popper JS -->
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script LANGUAGE="JavaScript">
<!--
	function confirmSubmit() {
		var agree = confirm("Are you sure you want to save input details?");
		if (agree)
			return true;
		else
			return false;
	}
// -->
</script>
<style type="text/css">
* {
	font-family: serif;
	font-size: 18px;
	color: black;
}

html {zoom: 90%;}

body {
	background-color: rgb(234, 232, 232);
	background-repeat: no-repeat;
	padding: 0%;
}

.empid {
	font-weight: bold;
	padding-left: 190px;
	align-content: center;
}

.empidInput {
	padding-left: 30px;
}

.emailId {
	padding-left: 110px;
}

.emailIdInput {
	padding-left: 30px
}

.empName {
	padding-left: 190px;
}

.empNameInput {
	padding-left: 30px;
}

.batch {
	padding-left: 110px;
}

input {
	background-color: white;
	border: solid #DDDDDD;
	color: black;
	border-radius: 6px;
}

select {
	background-color: white;
	border-radius: 6px;
	border: solid #DDDDDD;
	color: black;
}

.app {
	margin-left: 18px;
	color: black;
}

.card {
	height: 850px;
	padding-left: 20px;
	background-color: rgb(234, 232, 232);
	background-repeat: no-repeat;
	box-shadow: 5px 5px 5px 5px grey;
	background-size: 115% 115%, 20% 20%;
	width: 1250px;
	margin: auto;
}

*option {
	background-color: green;
	color: black;
}

#emp {
	padding-right: 1.4%;
}

#Back {
	padding-left: %;
}
</style>
<style>
.sidenav {
	height: 100%;
	width: 0;
	position: fixed;
	z-index: 1;
	top: 0;
	left: 0;
	background-color: rgba(52, 58, 64, 255);
	overflow-x: hidden;
	transition: 0.5s;
	padding-top: 60px;
	background-image:
		url(https://upload.wikimedia.org/wikipedia/commons/thumb/5/53/Fujitsu-Logo.svg/2560px-Fujitsu-Logo.svg.png);
	background-repeat: no-repeat;
	background-size: 40% 10%;
	background-position-x: 20px;
	background-position-y: 10px;
}

.sidenav .closebtn {
	position: absolute;
	top: 0;
	right: 25px;
	font-size: 36px;
	margin-left: 50px;
	color: rgb(255, 0, 0);
}

#main {
	transition: margin-left .5s;
	padding: 16px;
}

@media screen and (max-height: 450px) {
	.sidenav {
		padding-top: 15px;
	}
	.sidenav a {
		font-size: 18px;
	}
	#submit {
		background: rgb(169, 173, 169);
		color: black;
		margin-left: 15em;
		width: 160px;
		font-size: 20px;
	}
	#submit:hover {
		background-color: rgb(15, 39, 99);
		color: white;
	}
}
</style>

<style>
.error {
	color: red
}

nav {
	width: 100%;
	height: 75px;
	line-height: 75px;
	padding: 0px 50px;
	background-image: linear-gradient(#033747, #012733);
}

nav .logo p {
	font-size: 40px;
	float: left;
	color: red;
}

nav ul {
	float: right;
	%;
}

nav li {
	display: inline-block;
	list-style: none;
}
</style>

</head>

<body>

	<nav>
		<div class="logo">
			<p>Fujitsu</p>
		</div>
		<ul>

			<li>
				<form id="emp" align="right" method="GET" action="employeeinfo"
					target="_blank">
					<button type="back" class="btn btn btn-info btn-m btn-block"">Emp_Info</button>
				</form>
			</li> &nbsp;
			<li>
				<form id="faq" align="right" method="GET" action="faq"
					target="_blank">
					<button type="back" class="btn btn btn-success btn-m btn-block">FAQ</button>
				</form>
			</li> &nbsp;
			<li>
				<form id="Back" align="right" method="GET" action="logoutToTrainee">
					<button type="login" class="btn btn btn-danger btn-m">Logout</button>
				</form>
			</li>
		</ul>


	</nav>
	<br>
	<h4 style="color: red">${successMsg}</h4>
	<br>


	<form:form method="post" action ="trainee" modelAttribute="trainee"
		enctype="multipart/form-data">
		<div class="card">
			<div align="left">
				<div align="left">
					<h2 class="card-header"">Trainee Info:</h2>
				</div>
				<table style="width: 50%;" table table-hover";align="left">
					<tr>
						<td class="empid"><b>Employee ID</b><span class="text-dark">*</span></td>
						<td><input id="employeeId" list="employeeDataList" name="empId" 
						placeholder="employee Id" required>
							<datalist id="employeeDataList">

							<c:forEach items="${employeeIdList}" var="employeeId">
								
							</c:forEach>

						</datalist> </td>
						

						<td class="emailId"><b>Email ID</b><span class="text-dark">*</span></td>
						<td><input name="mailId" id="mailId"
							placeholder="mail Name" required></td>
					</tr>

					<tr>
						<td class="empName"><b>Employee Name</b><span
							class="text-dark">*</span></td>
						<td><input name="empName" id="employeeName"
							placeholder="Employee Name" required></td>
						<br>
						<td class="batch"><b>Batch</b><span class="text-dark">*</span></td>
						<td style="padding-left: 30px">
						<input name="batch" id="batch"
							placeholder="Batch" required></td>
				</table>
				<br>
				<div align="left">
					<h2 class="card-header">Course Details:</h2>
				</div>
				<table style="width: 50%;" class="table table-hover">
					<tr>
						<td><b>Training Date</b><span class="text-dark">*</span></td>
						<td><input type="Date" name="trainDate" id="trdate" value="" required /></td>
						<td><b>Start date</b><span class="text-dark">*</span></td>
						<td><input type="Date" name="srDate" value="" required />
						<td>
						<td><b>End date</b><span class="text-dark">*</span></td>
						<td><input type="Date" name="enDate" value="" required /></td>
					</tr>
					<tr>
						<td><label><b>Course Id </b><span class="text-dark">*</span></label></td>
						<td><input id="courseId" list="courseDataList" name="courseId"
							placeholder="Course Id" required><datalist id="courseDataList">

							<c:forEach items="${courseIdList}" var="courseId">
								<option value="${courseId}">${courseId}</option>
							</c:forEach>

						</datalist> </td>

						<td><label><b>Course Name</b><span class="text-dark">*</span></label></td>
						<td><input name="courseName" id="courseName"
							placeholder="Course Name" required></td>
					
					</tr>
					<tr>
						<td><b>Email Screenshot</b><span class="text-dark">*</span></td>
						<td><input type="file" id="fileName" name="emSrn"
							accept=".jpg,.jpeg,.png" onchange="validateFileType()" required /></td>

					</tr>
					<tr>
						<td><b>Saba Screenshot</b><span class="text-dark">*</span></td>
						<td><input type="file" id="fileName" name="sabaSrn"
							accept=".jpg,.jpeg,.png" onchange="validateFileType()" required /></td>
					</tr>
					<tr>
						<td><b>Test-Score Screenshot</b></td>
						<td><input type="file" id="fileName" name="testScrn"
							accept=".jpg,.jpeg,.png" onchange="validateFileType()" /></td>
						<td><b>Test Score</b></td>
						<td><input type="text" name="testScore" value=""
							placeholder="Score" /> <form:errors path="testScore"
								cssClass="error" /></td>
					</tr>
				</table>
				<table class="app">
					<tr>
						<td><b>Approver Name</b><span class="text-dark">*</span></td>
						 <td><input list="apName" name="apName" placeholder="Approver Name ">
               <datalist id="apName">
 <%
				try{
					//Class.forName("com.mysql.jdbc.Driver");
					Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/trainingstatusapp","root","root");
					Statement stat= con.createStatement();
					String query="select approver_name from tblapprovers";
				
					ResultSet rel=stat.executeQuery(query);
			
					while(rel.next())
					{
						String apName= ""+rel.getString("approver_name");
				
					
						System.out.println(apName);
						
			%>
					<option value="<%=apName%>"> <%=apName%></option>
					
			<%
					}
					con.close();					
				}
				catch(Exception e)
				{
					
				}

			%>
	</datalist>
			
			<% String val=request.getParameter("apName"); 
				System.out.println(val);
				
				%>
           <td>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<button type="submit" value='Submit' name='Submit'
								class="btn btn-danger btn-m" onClick='return confirmSubmit()'>Submit</button>
						</td>
					</tr>
				</table>
	</form:form>

</body>
<script type="text/javascript">
	$('#employeeId').change(function() {
		console.log("Inside");
		var employeeIdField = document.getElementById("employeeId");

		if( employeeIdField.value == null || employeeIdField.value == "") {
			alert("Select appropriate employee id")
			document.getElementById("batch").value = "";
			return; 
		}
		
		$.ajax({
			url : "employee-batch?employeeId=" + employeeIdField.value,
			context : document.body
		}).done(function(data) {
			document.getElementById("batch").value = data;
		});
	});
</script>
<script type="text/javascript">
	$('#courseId').change(function() {
		console.log("Inside");
		var courseIdField = document.getElementById("courseId");

		if( courseIdField.value == null || courseIdField.value == "") {
			alert("Select appropriate course id")
			document.getElementById("courseName").value = "";
			return; 
		}
		
		$.ajax({
			url : "course-name?courseId=" + courseIdField.value,
			context : document.body
		}).done(function(data) {
			document.getElementById("courseName").value = data;
		});
	});
</script>
<script type="text/javascript">
	$('#employeeId').change(function() {
		console.log("Inside");
		var employeeIdField = document.getElementById("employeeId");

		if( employeeIdField.value == null || employeeIdField.value == "") {
			alert("Select appropriate employee id")
			document.getElementById("employeeName").value = "";
			return; 
		}
		
		$.ajax({
			url : "employee-name?employeeId=" + employeeIdField.value,
			context : document.body
		}).done(function(data) {
			document.getElementById("employeeName").value = data;
		});
	});
</script>
<script type="text/javascript">
	$('#employeeId').change(function() {
		console.log("Inside");
		var employeeIdField = document.getElementById("employeeId");

		if( employeeIdField.value == null || employeeIdField.value == "") {
			alert("Select appropriate employee id")
			document.getElementById("mailId").value = "";
			return; 
		}
		
		$.ajax({
			url : "employee-mail?employeeId=" + employeeIdField.value,
			context : document.body
		}).done(function(data) {
			document.getElementById("mailId").value = data;
		});
	});
</script>
<script type="text/javascript">
	$('#employeeId').change(function() {
		console.log("Inside");
		var employeeIdField = document.getElementById("employeeId");

		if( employeeIdField.value == null || employeeIdField.value == "") {
			alert("Select appropriate employee id")
			document.getElementById("batch").value = "";
			return; 
		}
		
		$.ajax({
			url : "employee-batch?employeeId=" + employeeIdField.value,
			context : document.body
		}).done(function(data) {
			document.getElementById("batch").value = data;
		});
	});
</script>


<script type="text/javascript">
	function validateFileType() {
		var fileName = document.getElementById("fileName").value;
		var idxDot = fileName.lastIndexOf(".") + 1;
		var extFile = fileName.substr(idxDot, fileName.length).toLowerCase();
		if (extFile == "jpg" || extFile == "jpeg" || extFile == "png") {
			//TO DO
		} else {
			alert("Only jpg/jpeg and png files are allowed!");
		}
	}
</script>





</html>