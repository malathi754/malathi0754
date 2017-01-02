<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ page isELIgnored="false" %>
<!DOCTYPE html>
<head>
<title> About Us </title>
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
<marquee>
<h3 style="color:#FF6347">About Our Toy World</h3>
</marquee>
<hr>
<div class="container-fluid">
<div class="row">
<div class="col-sm-9 col-md-6 col-lg-8">
	  <center>
<img src="${pageContext.request.contextPath}/resources/55.png" alt="11"  style="width:500px;height:390px;">       
	 </center>

<p>A toy is an item that can be used for play. Toys are generally played with by children and pets.
 Playing with toys is an enjoyable means of training young children for life in society. 
 Different materials like clay and plastic are used to make toys enjoyable to people of all ages. 
 Many items are designed to serve as toys, but goods produced for other purposes can also be used. 
 For instance, a small child may pick up a household item and "fly" it through the air as to pretend that it is an airplane. 
 Another consideration is interactive digital entertainment. Some toys are produced primarily as collector's items and are intended for display only.
 <br>
 
 </div>
<div class="col-sm-3 col-md-6 col-lg-4">
 <h1> History </h1>
 <img src="${pageContext.request.contextPath}/resources/his.jpg" style="width:200px;height:250px;">
 <p>Little horse on wheels, <br>Ancient Greek child's toy.<br> From a tomb dating 950-900 BCE, <br>Kerameikos Archaeological Museum, Athens</p>
<video width="320" height="240" controls autoplay>
  <source src="${pageContext.request.contextPath}/resources/01.mp4" type="video/mp4">
</video>
  </div>
 </div>
 </div>
<c:import url="/footer"/>
</body>

</html>