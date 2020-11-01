

<html>

	<head>

		<title>IBS-Signin</title>

	</head>

	<body>

		

		<h1>IBS BANK</h1>

		<jsp:include page="menu.jsp"/>

		

		<h2>Customer Login</h2>

		<form action="sgin" method="POST" >

			<div>

				<label>Customer Name:&nbsp;&nbsp;&nbsp;</label>

				<input type="string" name="customerName"  />

			</div>
			<div>

				<label>Password:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>

				<input type="string" name="password"  />

			</div>
			<div>

				<button>SUBMIT</button>
				

			</div>
			
			
</form>	

		<form action="fg" method="POST" >	
		<div> <button>Forgot Password</button> </div>
		</form>
		
	</body>

</html>