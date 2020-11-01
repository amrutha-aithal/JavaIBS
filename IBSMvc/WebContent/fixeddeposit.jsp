
<%@page import="java.time.LocalDate"%>


<html>

	<head>

		<title>IBS-FixedDeposits</title>

	</head>

	<body>

<h3><%=LocalDate.now() %></h3>
		<h2>IBS BANK-Fixed Deposit</h2>
		
		<nav>

	<hr />
	  
	 <a href="accounts.jsp">Accounts</a>

	 <span>|</span>

	 <a href="recurringdeposit.jsp">Recurring Deposit</a>
	 
	 <span>|</span>

	 <a href="signout.jsp">Signout</a>	 

	<hr />

</nav>

<form action="fd" method="POST" >

			<div>
				<label>Interest payable:&nbsp;&nbsp;&nbsp;</label>

				<input type="string" name="interestPay"  />

			</div>
			<div>

				<label>Deposit amount:&nbsp;&nbsp;&nbsp; </label>

				<input type="string" name="depositAmount"  />

			</div>
			<div>

				<label>Date:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>
				<input type="date" name="date"  />

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