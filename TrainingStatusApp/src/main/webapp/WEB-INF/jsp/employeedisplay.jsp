
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<script type="text/javascript">
  <!--
      function getValue() {
      var retVal = prompt("Enter your Reason for rejection : ", "Type here");
            }
         //-->
 </script>
<!-- Latest compiled and minified CSS -->
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

<title>Trainee Records</title>

<style>
table {
	border-collapse: collapse;
}

table, th, td {
	border: 0px;
}

th, td {
	padding: 10px;
}

th {
	text-align: left;
}

tr, center1:nth-child(odd) {
	background-color:;
}

tr, center5 { <
	td1 style="visibility: collapse;
	"></
	td1
	>
	<td2
	style="visibility
	:
	collapse;
	"></
	td2
	>
	<td3
	style="visibility
	:
	collapse;
	"></
	td3
	>
	<td4
	style="visibility
	:
	collapse;
	"></
	td4
	>
	<td5
	style="visibility
	:
	collapse;
	"></
	td5
	>
	<td6
	style="visibility
	:
	collapse;
	"></
	td6
	>
	<td7
	style="visibility
	:
	collapse;
	"></
	td7
	>
}

body {
	background-color: rgb(245, 245, 245);
	padding: 3%;
}

}
body {
	font-family: Arial, Helvetica, sans-serif;
}

.ImgThumbnail {
	border-radius: 3px;
	cursor: pointer;
	transition: 0.3s;
}

.ImgThumbnail:hover {
	opacity: 0.7;
}

.modal {
	display: none;
	position: fixed;
	z-index: 1;
	padding-top: 100px;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	overflow: auto;
	background-color: rgb(0, 0, 0);
	background-color: rgba(0, 0, 0, 0.2);
}

.modalImage {
	margin: auto;
	display: block;
	width: 100%;
	max-width: 950px;
}

#caption {
	margin: auto;
	display: initial;
	width: 80%;
	max-width: 700px;
	text-align: center;
	color: #ccc;
	padding: 10px 0;
	height: 150px;
}

.modalImage, #caption {
	-webkit-animation-name: zoom;
	-webkit-animation-duration: 0.5s;
	animation-name: zoom;
	animation-duration: 0.5s;
}

@
-webkit-keyframes zoom {
	from {-webkit-transform: scale(0)
}

to {
	-webkit-transform: scale(1)
}

}
@
keyframes zoom {
	from {transform: scale(0)
}

to {
	transform: scale(1)
}

}
.close {
	position: absolute;
	top: 40px;
	right: 100px;
	color: #ff0000;
	font-size: 40px;
	font-weight: bold;
	transition: 0.3s;
}

.close:hover, .close:focus {
	color: #bbb;
	text-decoration: none;
	cursor: pointer;
}

@media only screen and (max-width: 700px) {
	.modal-content {
		width: 100%;
	}
}
</style>
<body class="container-fluid">
<form id="Back" align="left" method="GET" action="Backtoemployeeinfo">
 		<button type="Back" class="btn btn btn-info btn-m">Back</button>
  </form>
	<h2 class="card-header" style="background-color: D3d3d3">Trainee
		Records</h2>
	<table class="table table-hover"
		style="background-color: rgb(249, 245, 245)">
		<br>
		<tr>
			<center1>
			<td><label><b>SUBMIT DATE :</b></label> ${verDate}</td>
			<td><label><b>EMPLOYEE ID :</b></label> ${empId}</td>
			</center1>

		</tr>
	</table>
	</br>
	<table class="table table-hover"
		style="background-color: rgb(249, 245, 245)">
		<tr>
			<td style=" text-align:center"><b><label>EMPLOYEE ID</label></b></td>
			<td style=" text-align:center"><b><label>EMPLOYEE NAME</label></b></td>
			<td style=" text-align:center"><b><label>EMP MAIL ID</label></b></td>
			<td style=" text-align:center"><b><label>COURSE ID</label></b></td>
			<td style=" text-align:center"><b><label>COURSE NAME</label></b></td>
			<td style=" text-align:center"><b><label>SUBMITTED DATE</label></b></td>
			<td style=" text-align:center"><label><b>APPROVER NAME</b></label></td>
			<td style=" text-align:center"><label><b>SABA SCREENSHOT</b></label></td>
			<td style=" text-align:center"><label><b>MAIL SCREENSHOT</b></label></td>
			<td style=" text-align:center"><label><b>TEST SCREENSHOT</b></label></td>
			<td style=" text-align:center"><label><b>Status</b></label></td>
		</tr>

		<c:forEach items="${usersList}" var="user">
			<form method="post" action="approve">


				<tr>
					<center5> <td1>
					<input type="hidden" id="verNm" name="verNm" value="${verifyname}" /></td1>
					<td2>
					<input type="hidden" id="schId" name="schId" value="${srId}" /></td2> <td3>
					<input type="hidden" id="verDt" name="verDt" value="${verDate}" /></td3>
					<td4>
					<input type="hidden" id="emBatch" name="emBatch"
						value="${empBatch}" /></td4> <td5>
					<input type="hidden" id="emId" name="emId" value="${empBatch}" /></td5> <td6>
					<input type="hidden" id="empId" name="empId" value="${user.empId}" /></td6>

					<td><c:out value="${user.empId}" /></td>
					<td><c:out value="${user.empName}" /></td>
					<td><c:out value="${user.mailId}" /></td>
					<td7>
					<input type="hidden" id="csId" name="csId" value="${user.courseId}" /></td7>
					<td><c:out value="${user.courseId}" /></td>
					<td><c:out value="${user.courseName}" /></td>
					<td><c:out value="${user.trainDate}" /></td>
					<td><c:out value="${user.apName}" /></td>
					

					<td><img class="ImgThumbnail" src="${user.sImg}"
						style="width: 100%; max-width: 300px"></td>
					<td><img class="ImgThumbnail" src="${user.sbImg}" alt="sab"
						style="width: 100%; max-width: 300px"></td>
					<td><img class="ImgThumbnail" src="${user.tsImg}" alt="test"
						style="width: 100%; max-width: 300px"></td>
						<td><c:out value="${user.status}" /></td>
					
					<div class="modal">
						<span class="close">&times;</span> <img class="modalImage"
							id="img01">
					</div>
					</center5>
				</tr>

<script>
var modalEle = document.querySelector(".modal");
var modalImage = document.querySelector(".modalImage");
Array.from(document.querySelectorAll(".ImgThumbnail")).forEach(item => {
   item.addEventListener("click", event => {
      modalEle.style.display = "block";
      modalImage.src = event.target.src;
   });
});
document.querySelector(".close").addEventListener("click", () => {
   modalEle.style.display = "none";
});
</script>
			</form>
		</c:forEach>

	</table>

</body>
</html>