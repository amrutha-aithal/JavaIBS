

<html>

	<head>

		<title>IBS-ForgotPassword</title>

	</head>

	<body>

		

		<h1>IBS BANK</h1>

		<jsp:include page="menu.jsp"/>

		

		<h2>Customer Forgot Password</h2>

		<form action="sgin" method="POST" >

			<div>

				<label>Email ID:&nbsp;&nbsp;&nbsp;</label>

				<input type="string" name="emailId" required />

			</div>
			
			<div>

				<button>SUBMIT</button>
				

			</div>
			
			
</form>		
	</body>

</html>