<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>

<head>

<title>IBS-SignUp</title>
<style type="text/css">
div.left {
	width: 150px;
	float: left;
}

h1 {
	text-decoration-line: underline;
}

a {
	text-decoration: none;
}
</style>

</head>

<body>

	<h1>IBS BANK</h1>

	<jsp:include page="/header" />

	<h2>Welcome for registration</h2>
	<section class="container-fluid p-4">


		<div class="mb-4">
			<form:form action="/customer/add" method="POST"
				modelAttribute="customer" class="form-inline">
				<div>
					<form:errors path="*" />
				</div>
				<form:hidden path="txnPassword" value=""/>
				<div class="left">
					<form:label path="customerName" class="form-control-label">Full Name</form:label>
				</div>
				<div>
					<form:input path="customerName" class="form-control" type="text" />
				</div>
				<br>
				<div class="left">
					<form:label path="dateOfBirth" class="form-control-label">Date of Birth</form:label>
				</div>
				<div>
					<form:input path="dateOfBirth" class="form-control" type="date" />
				</div>
				<br>
				<div class="left">
					<form:label path="phoneNumber" class="form-control-label">Phone Number</form:label>
				</div>
				<div>
					<form:input path="phoneNumber" class="form-control" type="text" />
				</div>
				<br>
				<div class="left">
					<form:label path="emailId" class="form-control-label">Email ID</form:label>
				</div>
				<div>
					<form:input path="emailId" class="form-control" type="text" />
				</div>
				<br>
				<div class="left">
					<form:label path="address" class="form-control-label">Address</form:label>
				</div>
				<div>
					<form:input path="address" class="form-control" type="text" />
				</div>
				<br>
				<div class="left">
					<form:label path="userId" class="form-control-label">User Id</form:label>
				</div>
				<div>
					<form:input path="userId" class="form-control" type="number" />
				</div>
				<br>
				<div class="left">
					<form:label path="userName" class="form-control-label">User Name</form:label>
				</div>
				<div>
					<form:input path="userName" class="form-control" type="text" />
				</div>
				<br>
				<div class="left">
					<form:label path="password" class="form-control-label">Password</form:label>
				</div>
				<div>
					<form:input path="password" class="form-control" type="password" />
				</div>
				<br>
				<div class="left">
					<form:label path="role" class="form-control-label">Role</form:label>
				</div>
				<div>
					<form:input path="role" class="form-control" type="text" />
				</div>
				<br>
				<div class="left">
					<button class="btn btn-primary">Register</button>
				</div>
				<div>
					<a href="/customer/reset">Reset</a>
				</div>
			</form:form>
		</div>
	</section>
</body>
</html>