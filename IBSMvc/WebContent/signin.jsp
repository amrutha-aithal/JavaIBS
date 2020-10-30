

<html>

	<head>

		<title>IBS-Signin</title>

	</head>

	<body>

		

		<h1>IBS BANK</h1>

		<jsp:include page="menu.jsp"/>

		

		<h2>Customer Login</h2>

		<form action="sg" method="POST" >

			<div>

				<label>Customer ID:&nbsp;&nbsp;&nbsp;</label>

				<input type="string" name="customerID" required />

			</div>
			<div>

				<label>Password:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>

				<input type="string" name="password" required />

			</div>
			<div>

				<button>SUBMIT</button>

			</div>
			
</form>		
	</body>

</html>