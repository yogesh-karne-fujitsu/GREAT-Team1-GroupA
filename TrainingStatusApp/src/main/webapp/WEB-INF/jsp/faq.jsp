<html>
<head>
<meta charset="UTF-8">
<title>FAQs </title>
   <style>
    {
    margin: 0px;
    padding: 0px;
    box-sizing: border-box;
    font-family: 'Poppins', sans-serif;
}
body
{
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 100vh;   
    background: url(https://cdn.dribbble.com/users/3419046/screenshots/15428526/fujitsu-800_600.gif);
    background-color: rgb(234, 232, 232); 
    background-size: 18% 15%;
    background-position:  left top;
    background-repeat: no-repeat;
    padding: 2%;  
}

.container{
    margin: 0 40px;
    max-width: 600px;
    display: flex;
    flex-direction: column;
    gap: 20px;
}
.container h1{
    color: #333;
}
.container .tab{
    position: relative;
    background: #fff;
    padding: 0 10px 10px;
    box-shadow: 0 15px 25px rgba(0, 0, 0, 0.05);
    border-radius: 5px;
    overflow: hidden;
}
.container .tab input{
    appearance: none;
}
.container .tab label{
    display: flex;
    align-items: center;
    cursor: pointer;
}
.container .tab label::after{
    content: '+';
    position: absolute;
    right: 20px;
    font-size: 2em;
    color: rgba(0, 0, 0, 0.1);
    transition: trasform 2s;
}
.container .tab:hover label::after{
    color: #333;
}
.container .tab input:checked ~ label::after{
    transform: rotate(135deg);
    color: #fff;
}
.container .tab label h2{
    width: 40px;
    height: 40px;
    background: #333;
    display: flex;
    justify-content:center;
    align-items: center;
    color: #fff;
    font-size: 1.23em;
    border-radius: 5px;
    margin-right: 10px;
}

.container .tab:nth-child(2) label h2{
    background:linear-gradient(135deg, #95f795, #49c628);
}
.container .tab:nth-child(3) label h2{
    background:linear-gradient(135deg, #cf8585, #ee2e2e);
}
.container .tab:nth-child(4) label h2{
    background:linear-gradient(135deg, #f0c185, #eb9617);
}
.container .tab:nth-child(5) label h2{
    background:linear-gradient(135deg, #8a72f3, #3326ec);
}
.container .tab:nth-child(6) label h2{
    background:linear-gradient(135deg, #f0aae4, #e034d2);
}
.container .tab:nth-child(7) label h2{
    background:linear-gradient(135deg, #fdff87, #e7e420);
}
.container .tab:nth-child(8) label h2{
    background:linear-gradient(135deg, #b2f37d, #8ef032);
}
.container .tab:nth-child(9) label h2{
    background:linear-gradient(135deg,  #8bf7f1, #22e2e2);
}
.container .tab:nth-child(10) label h2{
    background:linear-gradient(135deg,#8bb0ff, #3d2ff5);
}
.container .tab input:checked ~ label h2{
    position: absolute;
    top: 6;
    left: 0;
    width: 100%;
    height: 140%;
    color: rgb(225, 225, 225, 0.2);
    font-size: 8em;
    justify-content: flex-end;
    padding: 25px;
    
    

}
.container .tab label h3{
    position: relative;
    font-weight: 500;
    color: #333;
    z-index: 10;
}
.container .tab input:checked ~ label h2{
    background-color: #fff;
    padding: 2px;
    color: rgba(2, 2, 2, 0.2);
    border-radius: 2px;
    box-shadow: 0 5px 15px rgba (0, 0, 0, 0.5);
    padding-bottom: 5px;

}
.container .tab input:checked ~ label h3{
    background-color: #fff;
    padding: 2px;
    color: rgba(0, 0, 0, 0.986);
    border-radius: 2px;
    box-shadow: 0 5px 15px rgba (0, 0, 0, 0.5);
    padding-bottom: 5px;

}
.container .tab .content{
    max-height: 0;
    transition: 1s;
    overflow: hidden;
}
.container .tab input:checked ~ .content{
    max-height: 100vh;
}
.container .tab .content p{
    position: relative;
    padding: 10px;
    color: #333;
    z-index: 10;
    font-size: 1.50em;
}
.container .tab input:checked ~ .content p {
    color: #fff;
     
}
.p {
    color: red;
    background-color: red;
}
   </style>
</head>
<body> 
    <div class="container">
       <h1>Frequently Asked Questions</h1>
       <div class="tab">
        <input type="radio" name="acc" id="acc1">
        <label for="acc1">
            <h2>01</h2>
            <h3>How to remove the wrong screenshot?</h3>
        </label>
        <div class="content"><p>You must update it again on the trainee page.</p></div>
       </div>
       <div class="tab">
        <input type="radio" name="acc" id="acc2">
        <label for="acc2">
            <h2>02</h2>
            <h3>How do I remove the wrong approver's name?</h3>
        </label>
        <div class="content"><p>You must update it again or check with the admin team.</p></div>
       </div>
       <div class="tab">
        <input type="radio" name="acc" id="acc3">
        <label for="acc3">
            <h2>03</h2>
            <h3>Can we add images in another format?</h3>
        </label>
        <div class="content"><p>Yes. It accepts jpg and png formats.</p></div>
       </div>
       <div class="tab">
        <input type="radio" name="acc" id="acc4">
        <label for="acc4">
            <h2>04</h2>
            <h3>In what format should we enter our email ID?</h3>
        </label>
        <div class="content"><p>The email address must be entered in lower case only .</p></div>
       </div>
       <div class="tab">
        <input type="radio" name="acc" id="acc5">
        <label for="acc5">
            <h2>05</h2>
            <h3>In which format should we enter the test score?</h3>
        </label>
        <div class="content"><p>The test score must be entered in two digits only, without the percentage symbol.
            Example: 80.</p></div>
       </div>
       <div class="tab">
        <input type="radio" name="acc" id="acc6">
        <label for="acc6">
            <h2>06</h2>
            <h3>What if I don't have a test score screenshot?</h3>
        </label>
        <div class="content"><p>If you don't have a screenshot of your test score, leave it blank.</p></div>
       </div>
       <div class="tab">
        <input type="radio" name="acc" id="acc7">
        <label for="acc7">
            <h2>07</h2>
            <h3>What if I don’t have a test score?</h3>
        </label>
        <div class="content"><p>You must leave it blank if you don’t have a test score.</p></div>
       </div>
       <div class="tab">
        <input type="radio" name="acc" id="acc8">
        <label for="acc8">
            <h2>08</h2>
            <h3>How do I check if my status is approved or rejected?</h3>
        </label>
        <div class="content"><p>Check in employee info page.</p></div>
       </div>
       <div class="tab">
        <input type="radio" name="acc" id="acc9">
        <label for="acc9">
            <h2>09</h2>
            <h3>What if the course ID or course name is not available in the drop-down list?</h3>
        </label>
        <div class="content"><p>Contact the admin team or approver.</p></div>
       </div>
        <p>&copy; Fujitsu 2022</p>
   
    </div>
</body>
</html>
