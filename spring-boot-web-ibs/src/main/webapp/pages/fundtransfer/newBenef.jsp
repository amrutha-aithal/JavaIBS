<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@page import="java.time.LocalDate"%>
<html>
<head>
<title>IBS-Beneficiary</title>
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
	<jsp:include page="fundtransferHeader.jsp" />
	<section class="container-fluid p-4">
		<div class="col-sm-4">
			<div align="center">
				<h3>New Beneficiary</h3>
			</div>
			<form:form action="/fundtransfer/newBenef" method="POST"
				modelAttribute="beneficiary" class="form-horizontal">
				<div>
					<form:errors path="*" />
				</div>
				<div class="form-control-group">
					<form:label path="account.accountNum" class="sr-only">Current User
						Account:</form:label>
					<form:hidden class="form-control" path="account.accountNum"/>
				</div>				
				<div class="form-control-group">
					<form:label path="beneficiaryAccNum" class="form-control-label">Beneficiary Account #</form:label>
					<form:input path="beneficiaryAccNum" class="form-control"/>
				</div>
				<div class="form-control-group">
					<form:label path="beneficiaryName" class="form-control-label">Beneficiary Name</form:label>
					<form:input path="beneficiaryName" class="form-control"/>
				</div>
				<div class="form-control-group">
					<form:label path="ifscCode" class="form-control-label">IFSC</form:label>
					<form:input path="ifscCode" class="form-control"/>
				</div>
				 <div class="form-control-group">
					<form:label path="transactionDate" class="form-control-label">Transaction Date:</form:label>
					<form:input class="form-control" type="date" path="transactionDate"
						value="<%=new java.util.Date()%>"/>
				</div>
				<br>
				<div class="form-control-group">
					<button type="submit" class="btn btn-primary">SUBMIT</button>
				</div>
			</form:form>
		</div>
	</section>
	<script>
	<%--var today = new Date();
	var dd = today.getDate();
	var mm = today.getMonth()+1; //January is 0!
	var yyyy = today.getFullYear();
	 if(dd<10){
	        dd='0'+dd
	    } 
	    if(mm<10){
	        mm='0'+mm
	    } 

	today = yyyy+'-'+mm+'-'+dd;
	document.getElementById("depositDate").setAttribute("min", today);
	
		function calculateMaturityDate() {
			var depositDate = document.getElementById("depositDate").value;
			var timeInYears = parseInt(document.getElementById("timeInYears").value);
			var timeInMnth = parseInt(document.getElementById("timeInMonths").value);
			var maturityDate = new Date(depositDate);
			maturityDate.setMonth(maturityDate.getMonth() + timeInMnth);
			maturityDate.setFullYear(maturityDate.getFullYear() + timeInYears);
			var endDate = maturityDate.toISOString().substr(0, 4)+ "-"
					+ maturityDate.toISOString().substr(5, 2) + "-"
					+ maturityDate.toISOString().substr(8, 2) ;
			document.getElementById("maturityDate").value = endDate;

			var amountDeposit = parseInt(document
					.getElementById("amountDeposit").value);
			var interestRate = parseFloat(document.getElementById("interestRate").value);
			var term = timeInYears + (timeInMnth / 12);
			var maturityAmt = amountDeposit
					* (1 + ((interestRate * term) / 100));
			var interestReceived = maturityAmt - amountDeposit;
			document.getElementById("maturityAmount").value = maturityAmt;
			document.getElementById("interestReceived").value = interestReceived;
			document.getElementById("balanceAmt").value = maturityAmt;

		}--%>
	</script>
</body>


</html>