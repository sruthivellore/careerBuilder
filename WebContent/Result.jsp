<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
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
    background-image: url("8.jpg");
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

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">

<title>Insert title here</title>
</head>
<body >


<%

String userName = (String)session.getAttribute("loggedUserName");
String FName = (String)session.getAttribute("loggedUserFname");
String email = (String)session.getAttribute("loggedUserEmail");
String password = (String)session.getAttribute("loggedUserPassword");
int i=0;

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
        <a class="nav-link"  href="FirstPage.html" ><i class="fa fa-sign-out" aria-hidden="true" style="font-size: 1.5em"></i>SIGN OUT</a>
      </ul>
     
  </div>
</nav>

<div class= "bg">
<div class="container">

<div class="container">
<div class="row">

	<div class="col-sm-4 col-md-6 col-lg-6">
	    <div class="card border-primary mb-6" style="max-width: 50rem;">
  <div class="card-body">
  <div class="card-header text-success"><h3>Suggested Branches</h3><small class="text-muted">To know more about the branch click on it</small> </div>
   <ul class="list-group">
   <c:set var = "count1" value = "0" scope = "page"/>
   
   <c:forEach items="${branches}" var="branch">
   		<li class="list-group-item d-flex justify-content-between align-items-center">
   		<h3 class="card-title"><span class="badge badge-pill badge-primary">${subList[count1].toUpperCase() }</span></h3>
   		   <c:set var = "scount" value = "0" scope = "page"/>
   		   <c:forEach items="${branch}" var="br">
   		   <c:if test = "${not empty br }">
   		   		<li class="list-group-item d-flex justify-content-between align-items-center">
   		   		<a data-toggle="tooltip" data-html="true" title="<u>Main Subjects Involved:</u> ${subs[count1][scount] }" data-placement="right">${br }</a>
   		   		<script>
				$(document).ready(function(){
    			$('[data-toggle="tooltip"]').tooltip();   
				});
				</script>
				<c:set var = "scount" value = "${scount + 1}" scope ="page"></c:set>
   		   		</li></c:if>  		   	
   		 </c:forEach>
        </li>
        <c:set var = "count1" value = "${count1 + 1}" scope ="page"></c:set>
   </c:forEach>
   
  </ul>
  </div>
</div>
	</div>
    <div class="col-sm-8 col-md-6 col-lg-6">     
	<div class="card border-primary mb-6" style="max-width: 50rem;">
  <div class="card-body">
  <div class="card-header text-success"><h3>Suggested Institutes</h3><small class="text-muted">To know more about the college click on it</small></div> 
       <ul class="list-group">
       
       <c:set var = "count1" value = "0" scope = "page"/>
       
  		<c:forEach items="${institutes}" var="institute">
   		<li class="list-group-item d-flex justify-content-between align-items-center">
   		<h3 class="card-title"><span class="badge badge-pill badge-primary">${subList[count1].toUpperCase() }</span></h3>
   		   
   		   <c:set var = "iid" value = "0" scope = "page"/>
   		   <c:forEach items="${institute}" var="insti">
   		   <c:if test="${not empty insti}">
   		   		<li class="list-group-item d-flex justify-content-between align-items-center">
   		   		<a href = "${links[count1][iid] }" target="_blank" class="text-white" >${insti}</a>
   		   		<c:set var="iid" value= "${iid + 1}" scope="page"> </c:set>
   		   		</li>
   		   	</c:if>
   		 </c:forEach>
        </li>
        
        <c:set var = "count1" value = "${count1 + 1}" scope = "page"> </c:set>
   </c:forEach>
   
</ul>
  </div>
</div>
	</div>
</div>
</div>

  
 
 <form action="three.jsp" method = "POST">
  <button class="button"><i class="fa fa-backward" aria-hidden="true" style="font-size: 1.5em"></i>&emsp;<font size = "4">Back</font></button>
 </form>

</div>
</div>

</body>
</html>