<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://bootswatch.com/4/darkly/bootstrap.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link href="bootstrap.css" rel="stylesheet" media="screen">
  
  
  <style>
   
   body, html {
    height: 100%;
    margin: 0;
	}

  .bg{
	padding: 100px;
    background-image: url("2.jpg");
    background-repeat: no-repeat;
    background-size: cover;
    height: 725px;

   }
   
   .button{
  background-color: #2a609a;
	width: 200px;
	height: 60px;
  color: white;
  outline: none;
  font-size: 16px;
  border: none;
  cursor: pointer;
  margin-top: 50px;
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
</head>
<body>
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
        <a class="nav-link" href="#"><i class="fa fa-home" aria-hidden="true" style="font-size: 1.5em"></i>&nbsp;HOME <span class="sr-only">(current)</span></a>
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
Your career starts now , wake up and be awesome.</strong><br><br><br>
<h4 align = center><strong> Find the career... You deserve!!</strong></h4>

</center>

<center>

<div class="block-display">
<form action="three.jsp" method = "POST">
<button class="button">Completed Inter</button>


</form> 
</div>

</div>
</div>
</center>

</body>
</html>