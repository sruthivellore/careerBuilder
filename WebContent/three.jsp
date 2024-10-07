<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>

body, html {
    height: 100%;
    margin: 0;
    }
    
 .bg{
	padding: 50px;
    background-image: url("2.jpg");
    background-repeat: no-repeat;
    background-size: cover;
    

   }
   
.container{
  	margin-top:20px;
}

.button{
  background-color: #2a609a;
  width: 125px;
  height: 50px;
  color: white;
  outline: none;
  font-size: 16px;
  border: none;
  cursor: pointer;
  margin-top: 50px;
  padding-down: 10px;
}

.block-display button{
  margin-bottom:0px;
  display:block;
}

.button:hover{
  background-color: #32CD32;
  font-size: 20px;
  transition: 0.5s;
}

</style>
<meta charset="UTF-8">

<link rel="stylesheet" href="https://bootswatch.com/4/darkly/bootstrap.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<title>Insert title here</title>
</head>
<body >


<%

String userName = (String)session.getAttribute("loggedUserName");
String FName = (String)session.getAttribute("loggedUserFname");
String email = (String)session.getAttribute("loggedUserEmail");
String password = (String)session.getAttribute("loggedUserPassword");


%>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="#">CareerBuilder</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor02" aria-controls="navbarColor02" aria-expanded="false" aria-label="Toggle navigation" style="">
    <span class="navbar-toggler-icon"></span>
  </button>
	
  <div class="collapse navbar-collapse" id="navbarColor02">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="two.jsp"><i class="fa fa-home" aria-hidden="true" style="font-size: 1.5em"></i>&nbsp;HOME <span class="sr-only">(current)</span></a>
      </li>   
      </ul>
      
      <ul class="navbar-nav">
      <form action="Profile.jsp" method="POST">
      <button type="submit" class="btn btn-outline-primary" >Profile</button>&nbsp;
            
      </form>
      </ul>
      
     <ul class="navbar-nav">
        <a class="nav-link"  href="FirstPage.html"><i class="fa fa-sign-out" aria-hidden="true" style="font-size: 1.5em"></i>SIGN OUT</a>
      </ul>
     
  </div>
</nav>



<div class= "bg">
<div class="container">
<center>

<h3 align = center><strong>Hey&nbsp;&nbsp;<%= userName %> </strong></h3>
<h2 align = center><strong> WELCOME TO CAREER BUILDER</h2>
Your career starts now , wake up and be awesome.</strong></br></br></br>
<h4 align = center><strong> Find the career... You deserve!!</strong></h4>


</center>

<center>
<br>
   <div class="card text-white bg-primary mb-3" style="max-width: 20rem;">
  <div class="card-header"><strong>Choose Your Interests</strong></div>
  <div class="card-body">
  <fieldset>
  
  <div class="form-group">
    <div class="form-check">
      <form action="checkSubject" method="POST">
        <label class="form-check-label">
          <input class="form-check-input"  name = "ch1" type="checkbox" value="101">
          Arts&emsp;&emsp;&emsp;<input type="text" name="pin1" maxlength="5" size="4" placeholder = "Marks">
        </label><br><br>
         <label class="form-check-label">
          <input class="form-check-input"  name = "ch2" type="checkbox" value="102">
          Commerce&emsp;&emsp;&emsp;<input type="text" name="pin2" maxlength="5" size="4" placeholder = "Marks">
        </label><br><br>
        <label class="form-check-label">
        <input class="form-check-input"  name = "ch3" type="checkbox" value="104">
          Science&emsp;&emsp;&emsp;<input type="text" name="pin4" maxlength="5" size="4" placeholder = "Marks">
        </label><br><br>
       <label class="form-check-label">
        <input class="form-check-input"  name = "ch4" type="checkbox" value="105">
          History&emsp;&emsp;&emsp;<input type="text" name="pin5" maxlength="5" size="4" placeholder = "Marks">
        </label><br><br> 
        <label class="form-check-label">
        <input class="form-check-input"  name = "ch5" type="checkbox" value="106">
          Mathematics&emsp;&emsp;&emsp;<input type="text" name="pin6" maxlength="5" size="4" placeholder = "Marks">
        </label><br><br>
        <label class="form-check-label">
        <input class="form-check-input"  name = "ch6" type="checkbox" value="103">
          Law&emsp;&emsp;&emsp;<input type="text" name="pin3" maxlength="5" size="4" placeholder = "Marks">
        </label><br><br>
        <label class="form-check-label">
        <input class="form-check-input"  name = "ch7" type="checkbox" value="107">
          Biology&emsp;&emsp;&emsp;<input type="text" name="pin7" maxlength="5" size="4" placeholder = "Marks">
        </label><br><br> 
         <button type="submit" class="btn btn-success">Submit</button><br><br>
  		 </form>
  		 
         </div>
             
      </div>
</fieldset>
</div>
</div>


  
 
</div>
 
 <form action="two.jsp" method = "POST">
  <button class="button"><i class="fa fa-backward" aria-hidden="true" style="font-size: 1.5em"></i>&emsp;<font size = "4">Back</font></button>
 </form>

</div>
</div>
</center>
</body>
</html>