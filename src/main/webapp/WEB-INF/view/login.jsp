<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ page isELIgnored="false" %>
    
<html>
<head>
<title>
Login
</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">

</head>

<body>
<c:import url="/header"/>
<br>
<center>
	<h3>Login</h3>
	<img src="${pageContext.request.contextPath}/resources/log.jpg" alt="1" width="300" height="300">
</center>
				<script type="text/css">
					</script>
					
					<div class="container">
					<div class="row">
					    <div class="col-lg-12 col-centered">
					    	<div class="table-responsive">
					    	<form action="${pageContext.request.contextPath}/login" method="post">
					    		    		
					    		<c:if test="${param.error != null}">
	                                <div class="alert alert-danger">
	                                    <p>Invalid Username and password.</p>
	                                </div>
	                            </c:if>
	                            <c:if test="${param.logout != null}">
	                                <div class="alert alert-success">
	                                    <p>You have been logged out successfully.</p>
	                                </div>
	                            </c:if>
            
            <table style="width: 60%;" class="table center">
							  	<tr>
							  		<td><label for="email">Username:</label></td>
							  		<td><input type="text" class="form-control" id="email" name="email" autofocus="true" required></td>
							  	</tr>
							  	
							  	<tr>
							  		<td><label for="password">Password:</label></td>
							  		<td><input type="password" class="form-control" id="password" name="password" required></td>
							  	</tr>
							  	
							  	<input type="hidden" name="${_csrf.parameterName}"   value="${_csrf.token}" />
							  	
							  	<tr>
							  		<td colspan="2" >
							  		<div class="row">
									    <div class="col-md-2 col-md-offset-5"> <button type="submit" class="btn btn-default" style="background-color: FireBrick; color:White">Submit</button> </div>
									</div>
							  		</td>
							  	</tr>
							  	
							  </table>
							  </form>
							</div>
					    </div>
					</div>
					</div>
							


</body>


<c:import url="/footer"/>
</html>