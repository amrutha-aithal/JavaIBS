<%@page import="java.time.LocalDate"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<html>
<head>
<title>IBS-FundTransfer</title>
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
	<jsp:include page="/header1" />
	<br>
	<section class="container-fluid p-4">
		<div class="jumbotron" align="center">
			<div class="btn-lg btn-info">IBS offers easy fund transfer to their beneficiaries!!</div>
				<br><br>
			 <a href="/fundtransfer/newBeneficiary"><button type="button" class="btn-lg btn-success">Add Beneficiary</button></a> 
			<a href="/fundtransfer/transferAmount"><button type="button" class="btn-lg btn-success">Transfer Amount</button></a> <br>
			<br>
		</div>
	</section>
</body>
</html>