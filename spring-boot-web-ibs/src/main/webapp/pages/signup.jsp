<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<title>IBS-SignUp</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
	<jsp:include page="/header" />
	<section class="container-fluid p-4">
		<div class="col-sm-4">
			<div align="center">
				<h2>IBS-Sign Up</h2>
			</div>
			<form:form action="/signup" method="POST" modelAttribute="customer"
				class="form-horizontal" id="signup">
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
					<form:input path="dateOfBirth" class="form-control" type="date"
						onchange="calculateAge()" />
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
					<form:select id="role" path="role" class="form-control"
						onchange="selectUser()">
						<form:option value="USER">USER</form:option>
						<form:option value="Service Provider">Service Provider</form:option>
					</form:select>
				</div>
				<br>
				<div class="col-sm-10">
					<button type="submit" class="btn btn-primary">Register</button>
					<button type="reset" class="btn btn-primary" onclick="resetUser()">Reset</button>
				</div>
			</form:form>
		</div>
	</section>
	<script>
		function selectUser() {
			var selectedUser = document.getElementById("role").value;
			if (selectedUser == "Service Provider") {
				var myDiv1 = document.createElement("DIV");
				myDiv1.setAttribute("class", "form-control-group");
				myDiv1.setAttribute("id", "myDiv1");
				document.getElementById("role").insertAdjacentElement(
						"afterend", myDiv1);
				var accountNumberLabel = document.createElement("LABEL");
				accountNumberLabel.innerHTML = "Account Number";
				accountNumberLabel.setAttribute("for", "accountNo");
				accountNumberLabel.setAttribute("class", "form-control-label");
				var accountNumberInput = document.createElement("INPUT");
				accountNumberInput.setAttribute("id", "accountNo");
				accountNumberInput.setAttribute("name", "accountNo");
				accountNumberInput.setAttribute("class", "form-control");
				myDiv1.appendChild(accountNumberLabel);
				myDiv1.appendChild(accountNumberInput);

				var ifscCodeLabel = document.createElement("LABEL");
				ifscCodeLabel.innerHTML = "IFSC Code";
				ifscCodeLabel.setAttribute("class", "form-control-label");
				var ifscCodeInput = document.createElement("INPUT");
				ifscCodeInput.setAttribute("path", "ifscCode");
				ifscCodeInput.setAttribute("class", "form-control");
				accountNumberInput.insertAdjacentElement("afterend",
						ifscCodeLabel);
				ifscCodeLabel.insertAdjacentElement("afterend", ifscCodeInput);

				document.getElementById("signup").setAttribute("action",
						"/signupSP")

			} else {
				document.getElementById("myDiv1").remove();
				document.getElementById("signup").setAttribute("action",
						"/signup");

			}
		}
		function resetUser() {
			document.getElementById("myDiv1").remove();
			document.getElementById("signup").setAttribute("action", "/signup");
		}

		function calculateAge() {
			var date = new Date(document.getElementById("dateOfBirth").value);
			var today = new Date();
			var age = today.getYear() - date.getYear();
			if (age < 18)
				alert("Age must be minimum 18 years or older");

		}
	</script>
</body>
</html>