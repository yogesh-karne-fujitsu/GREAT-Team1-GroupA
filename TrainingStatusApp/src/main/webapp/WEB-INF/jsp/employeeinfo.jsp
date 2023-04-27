<!DOCTYPE html>
<html>
  <head>
    <title>Emp Info</title>
    <meta charset="ISO-8859-1">
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
    <!-- jQuery library -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
    <!-- Popper JS -->
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <!-- Latest compiled JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
    <style>

body{ 
background-color: rgb(245, 245, 245);
padding: 5%;                                    
}

.card-details {
width: 700px;
margin: auto;
margin-top: 10px;
box-shadow: 5px 5px 5px 5px grey;
border-radius: 15px;
}

</style>
</head>
<body>


<form class="form" align="left" name="form1" method="post" action="rejectcourse">
<div class="card card-details">
<h2 class="card-header">Trainee Records</h2>
    <table class="table table-hover">
               <tr>
                <td><b>Employee Id:</b></td>
                    <td><input type="text" name="empID" placeholder="Employee Id" required /></td>
                <td>Submit Date :</td>
                    <td><input type="date" name="subDate" required> </td>
               </tr>
               <td>
                   <button type="submit" class="btn btn-success btn-m">Search</button>
              </td>
              
    </table>
</div>
</form>
</body>
</html>