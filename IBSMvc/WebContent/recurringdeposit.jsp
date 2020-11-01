
<%@page import="java.time.LocalDate"%>


<html>

	<head>

		<title>IBS-RecurringDeposits</title>

	</head>

	<body>

<h3><%=LocalDate.now() %></h3>
		<h2>IBS BANK-Recurring Deposit</h2>
		
		<nav>

	<hr />
	  <a href="home.jsp">Home</a>

	 <span>|</span>
	  
	 <a href="accounts.jsp">Accounts</a>

	 <span>|</span>

	 <a href="fixeddeposit.jsp">Fixed Deposit</a>
	 
	 <span>|</span>

	 <a href="signout.jsp">Signout</a>	 

	<hr />

</nav>

<form action="rd" method="POST" >

			<div>
				<label>Deposit Amount:&nbsp;&nbsp;&nbsp;</label>

				<input type="string" name="depositAmnt"  />

			</div>
			<div>

				<label>Interest Rate:&emsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>

				<input type="string" name="interestRate"  />

			</div>
			<div>

				<label><strong><br/>TENURE<br/></strong></label>
			
				<label>Years:&emsp;&nbsp;&emsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>
				<input type="string" name="years"  />

			</div>
			
			<div>
				<label>Months:&nbsp;&nbsp;&nbsp;&emsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>
				<input type="string" name="months"  />

			</div>
			
			<div>			
				<label>Days:&nbsp;&nbsp;&nbsp;&nbsp;&emsp;&emsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>
				<input type="string" name="days"  />

			</div>
			<div>

				<button>SUBMIT</button>
				

			</div>
			
			
</form>	

		
		</body>
		


</html>