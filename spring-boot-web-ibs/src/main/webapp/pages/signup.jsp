<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<title>IBS-SignUp</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
</head>
<body>
	<jsp:include page="/header" />
	<section class="container-fluid p-4">
		<div class="col-sm-4">
			<div align="center">
				<h2>Sign Up</h2>
			</div>
			<form:form action="/signup" method="POST" modelAttribute="customer"
				class="form-horizontal">
				<div>
					<form:errors path="*" />
				</div>
				<form:hidden path="txnPassword" value="" />
				<div class="form-control-group">
					<form:label path="customerName" class="form-control-label">Full Name</form:label>
					<form:input path="customerName" class="form-control" type="text" />
				</div>
				<div class="form-control-group">
					<form:label path="dateOfBirth" class="form-control-label">Date of Birth</form:label>
					<form:input path="dateOfBirth" class="form-control" type="date" />
				</div>
				<div class="form-control-group">
					<form:label path="phoneNumber" class="form-control-label">Phone Number</form:label>
					<form:input path="phoneNumber" class="form-control" type="text" />
				</div>
				<div class="form-control-group">
					<form:label path="emailId" class="form-control-label">Email ID</form:label>
					<form:input path="emailId" class="form-control" type="text" />
				</div>
				<div class="form-control-group">
					<form:label path="address" class="form-control-label">Address</form:label>
					<form:input path="address" class="form-control" type="text" />
				</div>

			 	<div class="form-control-group">
					<form:label path="data" class="form-control-label">Upload KYC Documents</form:label>
					<form:input path="data" class="form-control" type="file" />
				</div>
			<%--		<div class="form-control-group">
					<form:label path="userId" class="form-control-label">User Id</form:label>
					<form:input path="userId" class="form-control" type="number" />
				</div> --%>
				<div class="form-control-group">
					<form:label path="userName" class="form-control-label">User Name</form:label>
					<form:input path="userName" class="form-control" type="text" />
				</div>
				<div class="form-control-group">
					<form:label path="password" class="form-control-label">Password</form:label>
					<form:input path="password" class="form-control" type="password" />
				</div>
				<div class="form-control-group">
					<form:label path="confirmPassword" class="form-control-label">Confirm Password</form:label>
					<form:input path="confirmPassword" class="form-control"
						type="password" />
				</div>
				<div class="form-control-group">
					<form:label path="role" class="form-control-label">Role</form:label>
					<form:select path="role" class="form-control">
						<form:option value="USER">USER</form:option>
						<form:option value="Service Provider">Service Provider</form:option>
					</form:select>
				</div>
				<br>
				<div class="col-sm-10">
					<button type="submit" class="btn btn-primary">Register</button>
					<button type="reset" class="btn btn-primary">Reset</button>
				</div>
			</form:form>
		</div>
	</section>
</body>
</html>