<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ page isELIgnored="false" %>
<!DOCTYPE html>
<head>
<title> HOME </title>
</head>
<body>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
  <style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 40%;
      margin: auto;
      }
  
  </style>
</head>
<body>

<c:import url="/header"/>

<div class="container">


  <br>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
	 
    </ol>

    
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="${pageContext.request.contextPath}/resources/teddy1.jpg" alt="1" width="100" height="100">
      </div>

      <div class="item">
        <img src="${pageContext.request.contextPath}/resources/toy7.jpg" alt="2" width="100" height="100">
      </div>
    
      <div class="item">
        <img src="${pageContext.request.contextPath}/resources/teddy4.jpg" alt="3" width="100" height="100">
      </div>
	 
    </div>

    
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>



<div class="container">
<center>
<img src="${pageContext.request.contextPath}/resources/toy13.jpg" alt="11" style="width:100px;height:90px;">
<img src="${pageContext.request.contextPath}/resources/toy17.jpg" alt="12" style="width:100px;height:90px;">
<img src="${pageContext.request.contextPath}/resources/toy20.jpg" alt="13" style="width:100px;height:90px;">

</center>
</div>
<c:import url="/footer"/>
</body>

</html>