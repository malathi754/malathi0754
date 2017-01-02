<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ page isELIgnored="false" %>
  <style>
 
      .navbar-default {
    background-color:#FA8072;
}
  
  </style>
<nav class="navbar navbar-default">

	<div class="container-fluid">
		<div class="navbar-header">
		 <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#"><i><h1 style="color:black">Toy World</h1></i></a>
    </div>
	</div>
	<br>
    <div class="collapse navbar-collapse" id="myNavbar">
		
<ul class="nav navbar-nav navbar-right">

	<li><a href="sign"><span class="glyphicon glyphicon-user">SignUp</a></li>
	<li><a href="log"><span class="glyphicon glyphicon-log-in">Login</a></li>
	<li><a href="#">Cart<span class="glyphicon glyphicon-shopping-cart"></a></li></span>
	</ul>

<ul class="nav navbar-nav ">
          <li >
	  <a href="home"><span class="glyphicon glyphicon-home"></span>Home</a></li>
	  <li>   <a href="1">About Us</a></li>
	 <li> <a href="2" ><span class="fa fa-phone"></span> Contact us</a></li>
	  <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Product<span class="caret"> </span></a>
	   <ul class="dropdown-menu">
	  <li><a href="#"> All Toys </a></li>
	  <li><a href="#"> Soft Toys </a></li>
	  <li><a href="#"> Puzzles </a></li>
	  <li><a href="#"> Learning & Education </a></li>	</ul> 
	</li>
      
    </ul>
	
</div>
</nav>