<!doctype html>
<%@page import="java.time.LocalDate"%>
<html>
<head>
    <title>IBS-Home</title>
  <link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
    <jsp:include page="/header" />    
    <h2>Welcome to IBS Bank</h2>
    <p>IBS Bank provides features like easy fund transfer, services
        provided for bills etc..</p>
    <section class="container-fluid p-4">
		<div class="jumbotron">
			<button type="button" class="btn-lg btn-dark" data-toggle="tooltip" data-placement="top" title="IBS offers the different type of accounts like Savings Deposit , Recurring Deposit, Fixed Deposit. To
            enjoy these features please register by signing up.Already a
            customer, SignIn">Accounts</button>
			<button type="button" class="btn-lg btn-dark" data-toggle="tooltip" data-placement="right" title="IBS offers easy fund transfer to their beneficiaries in the other banks or same bank.To enjoy these
 			features, please register by signing up. Already a customer, SignIn">Fund Transfer</button>
		<button type="button" class="btn-lg btn-dark" data-toggle="tooltip" data-placement="bottom" title="IBS offers variety of services like
            pay phone bills, electricity bills and lot more just in a click.To
            enjoy these features, please register by signing up. Already a
            customer, SignIn">Bill Payments</button>
		<button type="button" class="btn-lg btn-dark" data-toggle="tooltip" data-placement="left" title="IBS offers bank statements -
            Monthly, Annual and Periodic.To enjoy these features, please register
            by signing up. Already a customer, SignIn">Statements</button>
   
    </div>
    </section>
</body>
</html>
