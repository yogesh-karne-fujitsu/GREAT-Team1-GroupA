<html>
<head>
    <title>Log in</title>
    
<style>
*{
margin : 0;
padding : 0;
font-family : san-serif;
}

body{
background: url(https://wallpapercave.com/wp/wp2084254.jpg);
               background-color: rgb(234, 232, 232); 
               background-size: 100% 100%;
               background-position:  left top;
               background-repeat: no-repeat;
                padding: 0%;     
}   
}

body .hero{
height : 80%;
width : 100%;
background-position : center;
background-size : cover;
position :relative;
}

.form-box{
    width: 100%;
    max-width: 350px;
    height : 280px;
    position: relative;
    margin: 6% auto;
	background-color: hsla(0, 0%, 100%, 0.9) !important;
	backdrop-filter: saturate(500%) blur(50px);
    padding : 5px ;
    overflow: hidden;
}

.button-box{
width : 220px;
margin : 35px auto;
position : relative;
border-radius : 0px;
box-shadow : 0 0 20px 9px #ff61241f;
}

.toggle-btn{
padding : 10px 30px;
cursor : pointer;
background : transparent;
border : 0;
outline : none;
position : relative;
}

#btn{
top : 0;
left : 0;
position : absolute;
width : 110px;
height : 100%;
background : #00B7EB ;
border-radius : 0px;
transition : .5s;
}

.input-group{
top : 100px;
position: absolute;
width : 280px;
transition : .5s;

}

.input-field{
width: 100%;
padding : 10px 0;
margin : 5px 0;
border-left : 0;
border-right : 0;
border-top : 0;
border-bottom: 1px solid #999;
outline : none;
background : transparent;
}

.submit-btn{
width : 85%;
padding :10px 30px;
cursor : pointer;
display : block;
Margin : auto;
background : #1677C5;
border : 0;
outline : none;
border-radius : 0px;
}
#empid{
left: 50px;
}
#adminid{
left: 450px;
}
#empalignment{
padding : 25px;
}
#adminalignment{
padding : 25px;
}
.msgbox{
padding-top :125px;
padding-left:50px;
color:red;
}
</style>
</head>

<body>
 
<div class = "hero">
<div class = "form-box">    
      <div class = "button-box">
         <div id = "btn"></div>
         <button type = "button" class = "toggle-btn" onclick = "empid()">Trainee</button>
         <button type = "button" class = "toggle-btn" onclick = "adminid()">Admin</button>
      </div>  
      
      <div class="msgbox" >
 <h3>${errorMsg}</h3>
</div>
      
 <form id = "empid" class = "input-group" method="POST" action="traineelogin">

 <input type = "text" name = "traineeuserId" class = "input-field" placeholder = "Employee Id"  required>

 <input type = "password"  name = "traineepassword" class = "input-field" placeholder = "Password"  required>

 <button type= "submit" class = "submit-btn">Log In</button>

 </form>
 
 <form id = "adminid" class = "input-group" method="POST" action="Adminlogin">

 <input type = "text" name="adminuserId" class = "input-field" placeholder = "Admin Id"  required>

 <input type = "password"  name="adminpassword" class = "input-field" placeholder = "Password"  required>
 
 <button type= "submit" class = "submit-btn">Log In</button>

 </form>

</div>

</div>



<script>
var x = document.getElementById("empid");
var y = document.getElementById("adminid");
var z = document.getElementById("btn");

function adminid(){
x.style.left = "-400px";
y.style.left = "50px";
z.style.left = "110px";
}

function empid(){
x.style.left = "50px";
y.style.left = "450px";
z.style.left = "0px";
}

</script>

</body>
</html>

