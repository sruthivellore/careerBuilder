<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Career Builder</title>

  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://bootswatch.com/4/darkly/bootstrap.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
  body {
     height: 850px;
  }
  
  * {box-sizing: border-box;}

.mySlides {display: none;}
img {vertical-align: middle;}

/* Slideshow container */
.slideshow-container {
  max-width: 1000px;
  position: relative;
  margin: auto;
}



/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}



/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 0.5s;
  animation-name: fade;
  animation-duration: 1s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .text {font-size: 11px}
}
  </style>
  
</head>
<body>


<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="#">Career Builder</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor02" aria-controls="navbarColor02" aria-expanded="false" aria-label="Toggle navigation" style="">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarColor02">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="FirstPage.html"><i class="fa fa-home" aria-hidden="true" style="font-size: 1.5em"></i>&nbsp;HOME<span class="sr-only">(current)</span></a>
      </li>     
    </ul> 

     <form action="sign_in.jsp" method="POST">
     <button type="submit" class="btn btn-outline-primary" >Sign In/Sign Up</button>
     </form>
      
  </div>
</nav>

<div class="bg">
<div class="jumbotron">
  <center>
  <h4 class="display-4">Welcome to Career Builder</h4>
    </center>
 </div>
 
</div>


<div class="bg">
 <div class="container">

      <div class="row">
      
         <div class="col-sm-4 col-md-6 col-lg-6" >
         <div class="slideshow-container">

<div class="mySlides fade">
  <div class="numbertext">1 / 3</div>
  <img src="a1.jpg" style="width:100%">
  
</div>

<div class="mySlides fade">
  <div class="numbertext">2 / 3</div>
  <img src="a2.jpg" style="width:100%">
  
</div>

<div class="mySlides fade">
  <div class="numbertext">3 / 3</div>
  <img src="a3.jpg" style="width:100%">
  
</div>

</div>
<br>

<div style="text-align:center">
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
</div>
         </div>
          
      	<div class="col-sm-8 col-md-6 col-lg-6">      
         <div class="container">        
         <div class="bs-component">
			<ul class="nav-links new-session-tabs nav-tabs nav" role="tablist">
			
  				<li class="nav-item" role="presentation">
    				<a class="nav-link" data-toggle="tab" href="#SignIn">Sign in</a>
  				</li>
  				<li class="nav-item">
    				<a class="nav-link active show" data-toggle="tab" href="#SignUp">Sign up</a>
  				</li>
			</ul>

			
			
			<div id="myTabContent" class="tab-content">
				<div class="login-box tab-pane active" id="SignUp">
				<form action="signUp" method="POST">
  				<fieldset>  
   
   					    
   					<div class="form-group">
  						<label class="col-form-label" for="inputDefault">FULL NAME</label>
  						<input class="form-control" name="fname" placeholder="Full name" required="required" title="This field is required." id="fname" type="text">
  					</div>
  					
  					<div class="form-group">
  						<label class="col-form-label" for="inputDefault">USER NAME</label>
  						<input class="form-control" name="userName" placeholder="User name" required="required" title="This field is required." id="userName" type="text">
  					</div>
  
    				<div class="form-group">
      					<label for="exampleInputEmail1">EMAIL</label>    
      					<input class="form-control" name="email" id="email" aria-describedby="emailHelp" placeholder="Email" required="required" title="This field is required." type="email">
      					<small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
    				</div>
  
    				<div class="form-group">
      					<label for="exampleInputPassword1">PASSWORD</label>
      					<input class="form-control" name="password" id="password" placeholder="Password" required="required" title="This field is required." type="password">
    					<small id="passHelp" class="form-text text-muted">Please ensure that your password doesn't exceed 10 characters.</small>
    				</div>
    
   					<input type="submit" class="btn btn-primary" name="submit" value="Join for Free">
  				</fieldset>
				</form>
				
				
				
				</div> 
  
				<div class="tab-pane login-box" id="SignIn"><br>
  				<form action="signIn" method="POST">
  				<fieldset>  
    				<div class="form-group">
      					<label for="exampleInputEmail1">EMAIL</label>    
      					<input class="form-control" name="email1" required="required" title="This field is required." id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Email" type="email">
   	 				</div>
  
    				<div class="form-group">
      					<label for="exampleInputPassword1">PASSWORD</label>
      					<input class="form-control" name="password1" required="required" title="This field is required." id="exampleInputPassword1" placeholder="Password" type="password">
    				</div>
    				
    				<label><input id="rememberme" name="rememberme" value="remember" type="checkbox" /> &nbsp;Remember me</label><br>
    
   					<button type="submit" class="btn btn-primary">Submit</button>
   					
   					
  				</fieldset>
				</form>
				</div>
		</div>
	</div>
</div>
	</div>
      </div>
      </div>
<script>
var slideIndex = 0;
showSlides();

function showSlides() {
    var i;
    var slides = document.getElementsByClassName("mySlides");
    var dots = document.getElementsByClassName("dot");
    for (i = 0; i < slides.length; i++) {
       slides[i].style.display = "none";  
    }
    slideIndex++;
    if (slideIndex > slides.length) {slideIndex = 1}    
    for (i = 0; i < dots.length; i++) {
        dots[i].className = dots[i].className.replace(" active", "");
    }
    slides[slideIndex-1].style.display = "block";  
    dots[slideIndex-1].className += " active";
    setTimeout(showSlides, 1000); // Change image every 2 seconds
}
</script>      
</body>
</html>