<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
<body style="background-color: Lightblue;">
	<title>Sign up</title>

	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet"
		href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<link rel="stylesheet"
		href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
</head>
<body>
	<c:import url="/header" />
	<center>
		<img src="${pageContext.request.contextPath}/resources/01.jpg"
			alt="11" style="width: 500px; height: 390px;">
	</center>
	<button type="button"
		onclick="document.getElementById('demo').innerHTML = Date()">
		Click me to display Date and Time.</button>

	<p id="demo"></p>
	<div class="form">
<script type="text/css">
					</script>
					
					<div class="container">
					<div class="row">
					    <div class="col-lg-12 col-centered">
					    	<div class="table-responsive">
					    
	<form:form method="post" action="AddUser" modelAttribute="User">
	
		<!--  -->
		<table style="width: 80%;" class="table center">
			<tr>
				<td><form:label path="fname" for="fname">First name:</form:label></td>
				<td><form:input path="fname" type="text"  class="form-control" id="fname"/></td>
				<td class="alert alert-danger"><form:errors path="fname"/></td>
			</tr>
			<tr>
				<td><form:label path="sname" for="sname">Sur name:</form:label></td>
				<td><form:input path="sname" type="text"  class="form-control" id="sname"/></td>
				<td class="alert alert-danger"><form:errors path="sname"/></td>
			</tr>
			<tr>
				<td><form:label path="dob" for="dob">Date of Birth:</form:label></td>
				<td><form:input path="dob" type="dob"  class="form-control" id="dob"/></td>
				<td class="alert alert-danger"><form:errors path="dob"/></td>
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
				<td><form:label path="retypepassword" for="retypepassword">Retype password:</form:label></td>
				<td><form:input path="retypepassword" type="password" class="form-control" id="retypepassword"/></td>
				<td class="alert alert-danger"><form:errors path="retypepassword"/></td>
			</tr>
				<tr>
				<td><form:label path="location" for="location">Address Line1:</form:label></td>
				<td><form:textarea path="location" class="form-control" id="location"></form:textarea></td>
				<td class="alert alert-danger"><form:errors path="location" /></td>
			</tr>
				<tr>
				<td><form:label path="location" for="location">Address Line2:</form:label></td>
				<td><form:textarea path="location" class="form-control" id="location"></form:textarea></td>
				<td class="alert alert-danger"><form:errors path="location" /></td>
			</tr>	

				<tr>
				<td><form:label path="pincode" for="pincode">Pincode:</form:label></td>
				<td><form:input path="pincode" type="pincode" class="form-control" id="pincode"/></td>
				<td class="alert alert-danger"><form:errors path="pincode"/></td>
			</tr>		
			<tr>
				<td><form:label path="phone" for="phone">Phone:</form:label></td>
				<td><form:input path="phone" type="phone" class="form-control" id="phone"/></td>
				<td class="alert alert-danger"><form:errors path="phone" /></td>
			</tr>
			<tr>
				<td><form:label path="city" for="city">City:</form:label></td>
				<td><form:input path="city" type="city" class="form-control" id="city"/>
				
				<select
					class="control-label col-sm-12" id="sel1">
					<option>--Select--</option>
					<option>Mumbai</option>
					<option>Delhi</option>
					<option>Bangalore</option>
					<option>Chennai</option>
					<option>Hyderabad</option>
					<option>Ahmedabad</option>
					<option>Kolkata</option>
					<option>Surat</option>
					<option>Pune</option>
					<option>Coimbatore</option>
					<option>Kota</option>
					<option>Solapur</option>
					<option>Ranchi</option>
					<option>Lucknow</option>
					<option>Kanpur</option>
					<option>Kochin</option>
					<option>Bhopal</option>
					<option>Visakhapatnam</option>
					<option>Agra</option>
					<option>Nashik</option>
					<option>Srinagar</option>
					<option>Thiruvananthapuram</option>
				</select></td>
				<td class="alert alert-danger"><form:errors path="city" /></td>
			</tr>
			<tr>
				<td><form:label path="state" for="state">State:</form:label></td>
				<td><form:input path="state" type="state" class="form-control" id="state"/>
				
				<select
						class="control-label col-sm-12" id="sel1">
						<option>--Select--</option>

						<option>Andhra Pradesh</option>
						<option>Arunachal Pradesh</option>
						<option>Assam</option>
						<option>Bihar</option>
						<option>Chhattisgarh</option>
						<option>Goa</option>
						<option>Gujarat</option>
						<option>Haryana</option>
						<option>Himachal Pradesh</option>
						<option>Jammu and Kashmir</option>
						<option>Jharkhand</option>
						<option>Karnataka</option>
						<option>Kerala</option>
						<option>Madhya Pradesh</option>
						<option>Maharashtra</option>
						<option>Manipur</option>
						<option>Meghalaya</option>
						<option>Mizoram</option>
						<option>Nagaland</option>
						<option>Odisha</option>
						<option>Punjab</option>
						<option>Rajasthan</option>
						<option>Sikkim</option>
						<option>Tamil Nadu</option>
						<option>Telangana</option>
						<option>Tripura</option>
						<option>Uttar Pradesh</option>
						<option>Uttarakhand</option>
						<option>West Bengal</option>
				<td class="alert alert-danger"><form:errors path="state" /></td>
			</tr>
				
			
							  	
			<tr>
				<td colspan="2" >
					<div class="row">
					    <div class="col-md-2 col-md-offset-5"> <button type="submit" class="btn btn-default">Submit</button>
				</div>
					    
					</div>
		  		</td>
		  </table>
		<!--  -->
	
	</form:form>
	<c:import url="/footer" />
</body>

</html>