 
<html>

<head>

    <title>Employee Training Approval</title>

    <meta charset="UTF-8">

    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

    <style>

        body {

            background-color: rgb(234, 232, 232);

        }

        .container{


        background-color: rgb(249, 245, 245);

        margin-top:0.5%;        

        }

    </style>

</head>

<body>

    <div class="container">


        <h2>Trainee Records</h2>

    </div>

    <div class="container">

        <form>

        <table class="table table-hover">

        <tr>

        <td>

            <div >

                <label for="approver">Approver Name:</label>

            </div>

        </td>

        <td>

            <div >

                <label for="submit-date">Submit Date:</label>

            </div>

        </td>

        </tr>

        <tr>

        <td>

            <div >

                <label for="batch">Batch Name:</label>

            </div>

            </td>

            <td>

            <div >

                <label for="employee-id">Employee Id:</label>

            </div>

        </td>

        </tr>

        </table>

    </div>

        <div class="container">

        </form>

        <br>

        <h2>Employee Training Details</h2>

        <table class="table table-hover">

            <thead>

                <tr>

                    <th>EMPLOYEE ID</th>

                    <th>EMPLOYEE NAME</th>

                    <th>EMP MAIL ID</th>

                    <th>COURSE ID</th>

                    <th>COURSE NAME</th>

                    <th>SUBMITTED DATE</th>

                    <th>APPROVER NAME</th>

                    <th>SABA SCREENSHOT</th>

                    <th>MAIL SCREENSHOT</th>

                    <th>TEST SCREENSHOT</th>

                </tr>

                <tr>

                <td>

                    <button type="submit" class="btn btn-outline-success" value="A"

                            name="status">APPROVE</button>

                    </td>

                    <td>

                        <button class="btn btn-outline-danger" value="R" name="status">REJECT</button>

                    </td>

                </tr>

            </thead>

            <tbody>

                <!-- Table data will be added dynamically using JavaScript -->

            </tbody>

        </table>

    </div>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>

    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

</body>

</html>






 

