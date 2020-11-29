<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

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
				<form:form action="/signup/add" method="POST" 
					modelAttribute="group" class="form-inline">
					
					<div>
						<form:errors path="*" />
					</div>
					 <label for="userId">User ID</label>
					<form:input path="userId" type="number" 
						class="form-control mr-2" placeholder="User ID"/><br><br> 
					<label for="userName">User Name</label>
					<form:input path="userName" type="text" 
						class="form-control mr-2" placeholder="User Name"/><br><br>
						<label for="password">Password</label>
					<form:input path="password" type="password" 
						class="form-control mr-2" placeholder="Password"/><br><br>
						<label for="role">Role</label>
					<form:input path="role" type="text" 
						class="form-control mr-2" placeholder="Role"/><br><br>
					<button class="btn btn-sm btn-primary">Register</button>
					<input type="reset" value="Reset">
				</form:form>
			</div>
	<!-- <form action="sgup" method="POST">

		<div class="left">
			<label for="customerName">Customer Name</label>
		</div>
		<div>
			<input type="text" id="customerName" name="customerName" required />
		</div>
		<br>
		<div class="left">
			<label for="dateOfBirth">Date of Birth</label>
		</div>
		<div>
			<input type="date" id="dateOfBirth" name="dateOfBirth" required />
		</div>
		<br>
		<div class="left">
			<label for="phoneNumber">Phone Number</label>
		</div>
		<div>
			<input type="text" id="phoneNumber" name="phoneNumber" required />
		</div>
		<br>
		<div class="left">
			<label for="emailId">Email ID</label>
		</div>
		<div>
			<input type="email" id="emailId" name="emailId" required />
		</div>
		<br>
		<div class="left">
			<label for="address">Address</label>
		</div>
		<div>
			<textarea id="address" name="address" rows="4" cols="50"
				maxlength="200" placeholder="Enter Address here..."></textarea>
		</div>
		<br> <br /> <br />
		<div class="left">
			<input type="submit" value="SUBMIT">
		</div> -->
		<div>
			<!-- <input type="reset" value="RESET">
			<button class="btn btn-sm btn-primary">RESET</button>
			<a href="/signup/reset" button class="btn btn-sm btn-danger">RESET</a> -->
										
		</div>

	</form>

</section>

</body>

</html>