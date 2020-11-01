

<html>

	<head>

		<title>IBS-Add Biller</title>

	</head>

	<body>

		

		<h1>IBS BANK</h1>
		

		<h2>Add Biller</h2>
		
		<nav>

	<hr />
	 
	 <a href="home.jsp">Home</a>

	 <span>|</span>

	 <a href="deletebiller.jsp">Delete Biller</a>
	 
	 <span>|</span>

	 <a href="paybills.jsp">Pay Bills</a>
	 
	 <span>|</span>

	 <a href="history.jsp">History</a>
	 
	  <span>|</span>

	 <a href="signout.jsp">Signout</a>
	 
	 

	<hr />

</nav>

		<form action="addBiller" method="POST" >

			<div>

				<label>Proprietor Name:&emsp;&emsp;&emsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>

				<input type="string" name="proprietorName"  />

			</div>
			<div>

				<label>Account Number:&emsp;&emsp;&emsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>

				<input type="string" name="accountNumber"  />

			</div>
			<div>

				<label>Confirm Account Number:&nbsp;&nbsp; </label>

				<input type="string" name="accountNumber"  />

			</div>
			<div>

				<label>Display Name:&emsp;&emsp;&emsp;&emsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>

				<input type="string" name="displayName"  />

			</div>
			<div>

				<label>Category:&emsp;&emsp;&emsp;&emsp;&nbsp;&emsp;&emsp;&nbsp;&nbsp;&nbsp; </label>

				<input type="string" name="category"  />

			</div>
			<div>

				<button>SUBMIT</button>
				

			</div>
			
			
</form>	
		
	</body>

</html>