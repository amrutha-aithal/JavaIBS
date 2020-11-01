

<html>

	<head>

		<title>IBS-Signup</title>

	</head>

	<body>

		

		<h1>IBS BANK</h1>

		<jsp:include page="menu.jsp"/>

		

		<h2>Welcome for registration</h2>

	<form action="sgup" method="POST" >

			<div>

				<label>Customer Name:&nbsp;&nbsp;&nbsp;</label>

				<input type="string" name="customerName" required />

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

				<label>Email ID:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>

				<input type="string" name="emailId" required />

			</div>
			<div>

				<label>Address:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>

				<input type="string" name="address" required />

			</div>
			<br/>
			<br/>
			<div>

				<button>SUBMIT</button>
				<button>RESET</button>

			</div>
			
</form>

		
	
	</body>

</html>