<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ page isELIgnored="false" %>
<!DOCTYPE html>
<head>
<title> contact Us </title>
</head>
<body>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
</head>
<body>
<c:import url="/header"/>

<center>
<img src="${pageContext.request.contextPath}/resources/16.jpg" alt="11" style=" align="center"width:200px;height:290px;">  

	</center> 
<hr>
<div class="row">

<div class="col-lg-6">
<p>
Thank you for your interest in Toy world services.<br>
<h4> You should receive a response within 24 hours.<i class="glyphicon glyphicon-thumbs-up"></i></h4>
 </p>
 
 </div>

<div class="col-lg-6">
 <form id="contact_form" action="#" method="POST" enctype="multipart/form-data">
	<div class="row">
		<label for="name">Your name:</label><br />
		<input id="name" class="input" name="name" type="text" value="" size="30" /><br />
	</div>
	<div class="row">
		<label for="email">Your email:</label><br />
		<input id="email" class="input" name="email" type="text" value="" size="30" /><br />
	</div>
	<div class="row">
		<label for="message">Your message:</label><br />
		<textarea id="message" class="input" name="message" rows="7" cols="50"></textarea><br />
	</div>
	<input id="submit_button"  style="background-color:red" type="submit" value="Submit" />
</div>
</div>
</div> 
</form>
<c:import url="/footer"/>
 </body>
 
 </html>