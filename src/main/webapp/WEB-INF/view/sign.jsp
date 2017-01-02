<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ page isELIgnored="false" %>
      
<html>
<head>

<title>Sign Up</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
</head>


<body>
<c:import url="/header"/>

<center>
	<h3>Register your Account</h3>
	<img src="${pageContext.request.contextPath}/resources/01.jpg" alt="1" width="500" height="300">
</center>

<div class="form">
<script type="text/css">
					</script>
					
					<div class="container">
					<div class="row">
					    <div class="col-lg-12 col-centered">
					    	<div class="table-responsive">
					    	
					    	<c:if test="${success != null}">
			                <div class="alert alert-success">
			                	<p>${success}</p>
			                </div>
			                </c:if>
			                
			                <c:if test="${error != null}">
			                <div class="alert alert-danger">
			                	<p>${error}</p>
			                </div>
			                </c:if>
							
	<form:form method="post" action="AddUser" modelAttribute="User">
	
		<!--  -->
		<table style="width: 80%;" class="table center">
			<tr>
				<td><form:label path="username" for="username">Username:</form:label></td>
				<td><form:input path="username" type="text"  class="form-control" id="username"/></td>
				<td class="alert alert-danger"><form:errors path="username"/></td>
			</tr>
			
			<tr>
				<td><form:label path="email" for="email">Email address:</form:label></td>
				<td><form:input path="email" type="email" placeholder="example@domain.com" class="form-control" id="email" autofocus="true"/></td>
				<td class="alert alert-danger"><form:errors path="email"/></td>
			</tr>
			
			<tr>
				<td><form:label path="password" for="password">Password:</form:label></td>
				<td><form:input path="password" type="password" class="form-control" id="password"/></td>
				<td class="alert alert-danger"><form:errors path="password"/></td>
			</tr>
							  	
			<tr>
				<td><form:label path="cPassword" for="cPassword">Confirm Password:</form:label></td>
				<td><form:input path="cPassword" type="password" class="form-control" id="cPassword"/></td>
				<td class="alert alert-danger"><form:errors path="cPassword"/></td>
			</tr>
							  	
			<tr>
				<td><form:label path="phone" for="phone">Phone:</form:label></td>
				<td><form:input path="phone" type="phone" class="form-control" id="phone"/></td>
				<td class="alert alert-danger"><form:errors path="phone" /></td>
			</tr>
				
			<tr>
				<td><form:label path="location" for="location">Address:</form:label></td>
				<td><form:textarea path="location" class="form-control" id="location"></form:textarea></td>
				<td class="alert alert-danger"><form:errors path="location" /></td>
			</tr>
							  	
			<tr>
				<td colspan="2" >
					<div class="row">
					    <div class="col-md-2 col-md-offset-5"> <button type="submit" class="btn btn-default" style="background-color:red">Submit</button> 
					    </div>
					</div>
		  		</td>
		  	</tr>
							  	
		  </table>
		<!--  -->
	
	</form:form>	
</div>	
</div>
</div>
</div>	
</div>

</body>

		
<c:import url="/footer"/>
</html>