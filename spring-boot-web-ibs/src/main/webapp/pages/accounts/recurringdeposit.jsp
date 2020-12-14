
<%@page import="java.time.LocalDate"%>
<html>
<head>
<title>IBS-RecurringDeposits</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
</head>
<body>
	<jsp:include page="menuaccounts.jsp" />
	<h3>IBS BANK-Recurring Deposit</h3>
	<form action="rd" method="POST">
		<div>
			<label>Deposit Amount:&emsp;&emsp;&nbsp; </label> <input
				type="number" name="amountDeposit" required />
		</div>
		<br />
		<div>
			<label>Interest Rate(%) (0-1): </label> <input type="number"
				name="interestRate" min="0" max="1" step="0.01" required />
		</div>
		<br />
		<div>
			<label>Deposit Date:&emsp;&emsp;&emsp;&nbsp; </label> <input
				type="date" name="depositDate" required />
		</div>
		<br />
		<div>
			<label>Maturity Date:&emsp;&emsp;&emsp; </label> <input type="date"
				name="maturityDate" required />
		</div>
		<br />
		<div>
			<label>Next Deposit Date:&emsp; </label> <input type="date"
				name="depositDate" required />
		</div>
		<br />
		<div>
			<button>SUBMIT</button>
		</div>
	</form>
</body>
</html>