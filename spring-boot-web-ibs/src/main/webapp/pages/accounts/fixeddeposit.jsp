
<%@page import="java.time.LocalDate"%>
<html>
<head>
<title>IBS-FixedDeposits</title>
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
	<h3>Fixed Deposit</h3>
	<div class="col-sm-4">
		<form action="fd" method="POST">
			<div class="form-control-group">
				<label for="amountDeposit" class="form-control-label">Deposit
					Amount:</label> <input class="form-control" type="number"
					name="amountDeposit" required />
			</div>
			<div class="form-control-group">
				<label for="interestRate" class="form-control-label">Interest
					Rate(%) (0-1): </label> <input class="form-control" type="number"
					name="interestRate" min="0" max="1" step="0.01" required />
			</div>
			<div class="form-control-group">
				<label for="depositDate" class="form-control-label">Deposit
					Date:</label> <input class="form-control" type="date" name="depositDate"
					required />
			</div>
			<div class="form-control-group">
				<label for="maturityDate" class="form-control-label">Maturity
					Date: </label> <input class="form-control" type="date" name="maturityDate"
					required />
			</div>
			<br>
			<div class="form-control-group">
				<button type="submit" class="btn btn-primary">SUBMIT</button>
			</div>

		</form>
	</div>

</body>


</html>