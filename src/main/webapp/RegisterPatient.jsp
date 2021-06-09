<%-- 
    Document   : RegisterPatient
    Created on : 29-May-2021, 1:48:10 pm
    Author     : kulde
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
  font-family: Arial, Helvetica, sans-serif;
   background-image:url('assets/images/slider/slider_1.jpg');
   background-repeat: no-repeat;
   background-attachment: fixed;
  background-size: cover;
}

* {
  box-sizing: border-box;
}

/* Add padding to containers */
.container {
  padding: 16px;
  background-color: white;
}
.formcenter{
   
    margin-left: 20%;
    margin-right:  20%;
}
/* Full-width input fields */
input[type=text], input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

/* Overwrite default styles of hr */
hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}

/* Set a style for the submit button */
.registerbtn {
  background-color: #04AA6D;
  color: white;
  padding: 16px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

.registerbtn:hover {
  opacity: 1;
}

/* Add a blue text color to links */
a {
  color: dodgerblue;
}

/* Set a grey background color and center the text of the "sign in" section */
.signin {
  background-color: #f1f1f1;
  text-align: center;
}
</style>
</head>
<script>
    
    function validateform(){  
var password=document.myForm.password.value;  
var cpsw = document.myForm.cpsw.value; 
if(password!=cpsw){  
  alert("Password not match.");  
  return false;  
  }  
}  
    
</script>
<body>

    <div class="formcenter">
    <form name="myForm" action="AddPatient.jsp" onsubmit="return validateform()" method="post">
    <div class="container">
    <h1>Register</h1>
    <p>Please fill in this form to create an account.</p>
    <hr>
    
    <label for="name"><b>Name</b></label>
    <input type="text" placeholder="Enter Name" name="name" id="name" required>
    
    <label for="email"><b>Email</b></label>
    <input type="text" placeholder="Enter Email" name="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" title="Enter Valid Email" id="email" required>
    
    <label for="Gender"><b>Gender</b></label> 
    <br>
     <input type="radio" name="gender" value="male" checked>
        <span> Male </span> 
     <input type="radio" name="gender" value="female">
        <span>Female </span> 
    <br>                                     
    <br>
    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="password" id="psw" pattern = "(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one  number and one uppercase and lowercase letter, and at least 8 or more characters" required>

    <label for="cpsw"><b>Confirm Password</b></label>
    <input type="password" placeholder="Confirm Password" name="cpsw" id="cpsw" pattern = "(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one  number and one uppercase and lowercase letter, and at least 8 or more characters" required>
    
    <label for="mobile"><b>Mobile Number</b></label>
    <input type="text" placeholder="Enter Mobile Number" name="mobile" id="mobile" pattern="[6-9]{1}[0-9]{9}" title="enter valid Mobile number" required>
    <br>
    <br>
    <label for="DOB"><b>DOB       </b></label>
    <input type="date" placeholder="Enter DoB" name="DOB" required>
    <br>
    <br>
    <hr>
    <label for="desies"><b>Desies</b></label>
    <input type="text" placeholder="Enter desies" name="desies"required>
    
    <hr>
    <button type="submit" class="registerbtn">register</button>
  </div>
  
  <div class="container signin">
    <p>Already have an account? <a href="index.html">Sign in</a>.</p>
  </div>
</form>
</div>
</body>
</html>
