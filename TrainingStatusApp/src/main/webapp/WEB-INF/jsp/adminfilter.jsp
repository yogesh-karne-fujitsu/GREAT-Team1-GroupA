 <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
  <head>
    <title>Welcome</title>
    <meta charset="ISO-8859-1">
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
    <!-- jQuery library -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
    <!-- Popper JS -->
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <!-- Latest compiled JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
  </head>
  <style>
  html {zoom: 100%;}
body{
background-color: rgb(245, 245,245);
padding:2%;
	}
.card-header {
 background-color:#D3d3d3;
 box-shadow: 2px 2px 2px 2px grey;
    }
.form {
 background-color: rgb(249, 245, 245);
 box-shadow: 2px 2px 2px 2px grey;
    }
label {
margin: .75rem;
    }
.logout-button {
 background: #71D5E4;
 border: 1px solid #000;
 box-shadow: 2px 2px 2px 2px grey;
 padding:15%;
    }
td {
font-weight: 700;
    }
.card-details {
 width: 1000px;
 margin: auto;
 margin-top: 10px;
    }

 #course{
 margin-left: 1140px;
    }
    
 </style>
 <body >
 <div class="card card-details">
 <h2 class="card-header" align="center"><b>Trainee Records</b></h2>
 <form  class="form" method="GET" action="logoutToAdmin" align="right">
<button type="logout"  class="btn btn-danger btn-m">Logout</button>
</form>

 <form class="form" align="right" name="form1" method="post" action="response">
  <table class="table table-hover">
  <tr>
 <td><b>Approver Name:</b></td>
               <td><input list="apName" name="approver" placeholder="Approver Name ">
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
            </td>
 <td>Batch Name :</td>
  <td>
 <select name="batName">
 <option value="" selected="selected">Select Batch</option>
 <option>January</option>
 <option>February</option>
 <option>March</option>
 <option>April</option>
 <option>May</option>
 <option>June</option>
 <option>July</option>
 <option>August</option>
 <option>September</option>
 <option>October</option>
 <option>November</option>
 <option>December</option>
 </select>
  </td>
  </tr>
  <tr>
  <td>Employee ID :</td>
   <td><input list="empId" name="empID" placeholder="Employee Id">
               <datalist id="empId">
 <%
				try{
					//Class.forName("com.mysql.jdbc.Driver");
					Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/trainingstatusapp_db","root","welcome@123");
					Statement stat= con.createStatement();
					String query="select distinct emp_id from tblmaster";
				
					ResultSet rel=stat.executeQuery(query);
			
					while(rel.next())
					{
						String empId= ""+rel.getString("emp_id");
				
						
			
					
						System.out.println(empId);
						
			%>
					<option value="<%=empId%>"> <%=empId%></option>
					
			<%
					}
					con.close();					
				}
				catch(Exception e)
				{
					
				}

			%>
	</datalist>
			
			<% String val1=request.getParameter("empId"); 
				System.out.println(val1);
				
				%>
            </td>
   <td>Submit Date<span class="text-dark">*</span> :</td>
   <td>
   <input type="date" name="subDate" required>
   </td>
   </tr>
   <tr>
   <td>
   <td>
   <button type="submit" class="btn btn-success btn-m">Search</button>
   </td>
   <td>
   <button type="reset"  class="btn btn-warning" >Clear</button>
   </td>
   </tr>
   </table>
   </form>
   </div>

  </body>
</html>