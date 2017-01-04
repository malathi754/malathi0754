<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ page isELIgnored="false" %>
    
<html>
<head>
<title>Product</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
</head>

<body style="background-image: url('https://s-media-cache-ak0.pinimg.com/originals/ba/79/c6/ba79c64f87fd38fe56eb6d8446216426.jpg');">
<c:import url="/header"/>
<br>



    <script type="text/javascript">
	

	var myApp = angular.module('myApp',[]);
	
	myApp.controller("abc",function($scope)
	{
		/*$scope.data = [
		               {"ProductId":"1","ProductName":"Vasudev","ProductDescription":"asdasd","ProductCategory":"asd","ProductPrice":"1000","ProductQuantity":"10","ProductImage":"#"},
		               {"ProductId":"2","ProductName":"Anju","ProductDescription":"asdasd","ProductCategory":"asd","ProductPrice":"1000","ProductQuantity":"10","ProductImage":"#"},
		               {"ProductId":"3","ProductName":"Dinesh","ProductDescription":"asdasd","ProductCategory":"asd","ProductPrice":"1000","ProductQuantity":"10","ProductImage":"#"},
		               {"ProductId":"4","ProductName":"Dinesh","ProductDescription":"asdasd","ProductCategory":"asd","ProductPrice":"1000","ProductQuantity":"10","ProductImage":"#"}
		              ];*/

		$scope.data = ${JSONData};
		$scope.searchKeyword = '${param.search}';
	});
	
	
	</script>
    
    
    <body ng-app="myApp" ng-controller="abc">
    
   	<!-- it is used for  shown to admin user only --> 
   			<% if (request.isUserInRole("ADMIN"))
    			{
    		%>
    	<a href="${pageContext.request.contextPath}\addproduct"> 
<button type="button" class="btn btn-default" style="background-color:brown;color:white;width:124px;height:38px;">Add Product</button> 
</a>
    <%
    	}
	%>
    
    
    <div class="container">
    
    <div class="col-lg-12"><span class="glyphicon glyphicon-search"></span> Search
    			<input type="text" id="search" value="" placeholder="Enter Search Keyword..." class="form-control" ng-model="searchKeyword" />
    		</div>
    		
    		<br>
    		<br>
    		<br>
    		<br>
    
    	<div class="row" ng-repeat="x in data| filter: searchKeyword">
    	<br>
    		<div class="col-lg-4">
    			<img src="{{x.ProductImage}}"></img>
    		</div>
    		<div class="col-lg-4">
    			<table class="table table-responsive">
    				<tr>
    					<td>Product Name:</td>
    					<td>{{x.ProductName}}</td>
    				</tr>
    				
    				<tr>
    					<td>Product Category:</td>
    					<td>{{x.ProductCategory}}</td>
    				</tr>
    				
    				<tr>
    					<td>Stall Name:</td>
    					<td>{{x.ProductDescription}}</td>
    				</tr>
    				
    				
    			</table>
    		</div>
    		<div class="col-lg-4">
    			<a href="${pageContext.request.contextPath}/viewproduct/{{x.ProductId}}" class="btn btn-success">View</a>
    			
    			 
    <% if (request.isUserInRole("ADMIN"))
    			{
    			%>
    			
    			<a href="${pageContext.request.contextPath}/updateproduct/{{x.ProductId}}" class="btn btn-info">Update</a>
    			<a href="${pageContext.request.contextPath}/deleteproduct/{{x.ProductId}}" class="btn btn-danger">Delete</a>
    			
    			<%
    			}
				%>
    		</div>
    	</div>
    </div>
    </body>
    <c:import url="/footer"/>
    </html>
    