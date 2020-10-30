

<html>

	<head>

		<title>IBS-Signup</title>

	</head>

	<body>

		

		<h1>IBS BANK</h1>

		<jsp:include page="menu.jsp"/>

		

		<h2>Welcome for registration</h2>

	<form action="si" method="POST" >

			<div>

				<label>Customer Name:&nbsp;&nbsp;&nbsp;</label>

				<input type="string" name="customerAmount" required />

			</div>
			<div>

				<label>Date of Birth:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>

				<input type="string" name="dateOfBirth" required />

			</div>
			<div>

				<label>Phone Number:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>

				<input type="string" name="phoneNumber" required />

			</div>
			<div>

				<label>Address:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>

				<input type="string" name="address" required />

			</div>
			<div>

				<button>SEND</button>

			</div>
			
</form>
	
	</body>

</html>