<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!doctype html>

<html>

<head>
<title>IBS-SignIn</title>

<style>
a {
	text-decoration: none;
	display: inline-block;
}

.left {
	width: 150px;
	float: left;
}

.center {
	padding-left: 50px;
	float: left;
}

h1 {
	text-decoration-line: underline;
}
</style>
</head>

<body>
	<h1>IBS BANK</h1>
	<jsp:include page="/header" />
	<h2>Customer Login</h2>
	<!-- <form action="sgin" method="POST">
		<div class="left">
			<label for="customerName">Customer Name</label>
		</div>
		<div>
			<input type="text" id="customerName" name="customerName" required>
		</div>
		<br>
		<div class="left">
			<label for="password">Password</label>
		</div>
		<div>
			<input type="password" name="pwd" required>
		</div>
		<br>
		<div class="center">
			<input type="submit" name="submit" id="submit" value="Sign In">
		</div>
		<div class="center">
			<a href="forgotpassword.jsp">Forgot Password</a>
		</div>
		<br>
	</form> -->
	<section class="container-fluid p-4">
		<div class="mb-5">
			<form:form action="/signin/submit" method="POST"
				modelAttribute="group" class="form-inline">
				<div>
					<form:errors path="*" />
				</div>
				<div class="left">
					<form:label path="userName">User Name</form:label>
				</div>
				<div>
					<form:input path="userName" type="text" class="form-control mr-2"
						placeholder="User Name" />
				</div>
				<br>
				<div class="left">
					<form:label path="password">Password</form:label>
				</div>
				<div>
					<form:input type="password" path="password"
						class="form-control mr-2" placeholder="Password" />
				</div>
				<br>
				<div class="center">
					<form:button class="btn btn-sm btn-primary">Sign In</form:button>
				</div>
				<br>
			</form:form>
		</div>
		<br>
		<div class="center">
			<a href="/signin/forgotpassword">Forgot Password</a>
		</div>
	</section>
</body>

</html>
