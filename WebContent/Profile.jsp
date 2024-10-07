<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style>
body, html {
    height: 100%;
    margin: 0;
    }
.container{
	padding:50px;
}

.bg {
 background-image: url("6.jpg");
 height: 730px;
}
</style>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://bootswatch.com/4/darkly/bootstrap.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>


<body>

<%


int userID = Integer.parseInt(session.getAttribute("loggedUserId").toString());
String userName = (String)session.getAttribute("loggedUserName");
String FName = (String)session.getAttribute("loggedUserFname");
String email = (String)session.getAttribute("loggedUserEmail");
String password = (String)session.getAttribute("loggedUserPassword");
String bio= "";

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
<center>

<div class="bg">
<div class="container">

<div class="card border-success mb-3" style="max-width: 20rem;">
  <div class="card-header">My Profile</div>
  <div class="card-body">
    
    <form action="Profile" method="POST">
  		<fieldset>
 
    	<div class="form-group row">
    
      		<div class="col-sm-10">
        
      		</div>
    		</div>
    
    <div class="form-group">
      <input class="form-control" type="hidden" name="userId" value=<%= userID%>>
     </div>
    	
    <div class="form-group">
      <label for="exampleInputName">Full Name</label>
      <input class="form-control" id="fullName" name="fullName" type="text" value=<%= FName%>>
     </div>
     <div class="form-group">
      <label for="exampleInputEmail1">User Name</label>
      <input class="form-control" id="userName" name="userName" type="text" value=<%= userName%>>
     </div>
    <div class="form-group">
      <label for="exampleInputEmail1">Email address</label>
      <input class="form-control" id="email" name="email" type="email" value=<%= email%>>
     </div>

	<div class="form-group">
        <div><label for="user_profile_bio">Bio</label></div>
         <textarea name="bio" class="for-control user-profile-bio-field js-suggester-field js-length-limited-input" placeholder="Tell us a little bit about yourself">
    	</textarea><br>
    </div>
	
	    
    <div class="form-group">
      <label for="exampleInputPassword1">Password</label>
      <input class="form-control" id="password" name="password" type="text" value=<%= password%>>
    </div>
    
    <div class="form-group">
      <input type="submit" class="btn btn-success" name="submit" value="Update profile">
    </div>
    
  </fieldset>
	
</form>

 
    <form action="DeleteUser" method="POST">
    <input class="form-control" type="hidden" name="userId" value=<%= userID%>>
    <input type="submit" class="btn btn-success" name="submit" value="Delete Account">
    </form>
  
</div>
  
  
</div>




</div>

</div>
</center>
</body>
</html>