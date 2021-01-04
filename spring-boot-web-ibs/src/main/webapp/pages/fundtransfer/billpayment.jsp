<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<title>IBS-Amount Transfer</title>
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
	<jsp:include page="/fundtransferHeader" />
	<section class="container-fluid p-4">
		<h3>Bill Payment Services</h3>
		<div class="col-sm-4">
			<form:form action="/bankservices/billpayment" method="POST"
				modelAttribute="billPay" class="form">
				<div class="form-control-group">
					<form:errors path="*"></form:errors>
				</div>

				<div class="form-control-group">
					<form:label path="account.accountNum" class="form-control-label">Current User
						Account:</form:label>
					<form:select path="account.accountNum" class="form-control"
						onchange="selectedIndexNumber()">
						<form:options items="${accounts}" itemLabel="accountNum"
							itemValue="accountNum" />
					</form:select>
				</div>
				<div class="form-control-group">
					<form:label path="serviceprovider.customerName"
						class="form-control-label">Service Provider</form:label>
					<form:select path="serviceprovider.customerName"
						class="form-control" onchange="selectedIndexBeneficiary()">
						<form:options items="${serviceproviders}" itemLabel="customerName"
							itemValue="customerName" />
					</form:select>
				</div>
				<div class="form-control-group">
					<form:label path="serviceprovider.accountNumber"
						class="form-control-label">Service Provider Account #</form:label>
					<form:select path="serviceprovider.accountNumber"
						class="form-control" readonly="true">
						<form:options items="${serviceproviders}"
							itemLabel="accountNumber" itemValue="accountNumber" />
					</form:select>
				</div>
				<div class="form-control-group">
					<form:label path="serviceprovider.ifscCode"
						class="form-control-label">IFSC Code</form:label>
					<form:select path="serviceprovider.ifscCode" class="form-control"
						readonly="true">
						<form:options items="${serviceproviders}" itemLabel="ifscCode"
							itemValue="ifscCode" />
					</form:select>
				</div>
				<div class="form-control-group">
					<form:label path="amtTransfer" class="form-control-label">Enter Amount: </form:label>
					<form:input path="amtTransfer" class="form-control" type="number"
						onchange="selectedIndexNumber()" />
				</div>
				<div class="form-control-group">
					<form:label path="transactionDate" class="form-control-label">Transaction Date: </form:label>
					<form:input class="form-control" type="date" path="transactionDate" />
				</div>
				<div class="form-control-group">
					<form:label path="account.balanceAmt" class="form-control-label">User Balance
						Amount </form:label>
					<form:select path="account.balanceAmt" class="form-control"
						readonly="true">
						<form:options items="${accounts}" itemLabel="balanceAmt"
							itemValue="balanceAmt" min="0" />
					</form:select>
				</div>
				<br>
				<div class="form-control-group">
					<button class="btn btn-primary">SAVE</button>
				</div>
			</form:form>
		</div>

	</section>
	<script type="text/javascript">
		function selectedIndexNumber() {
			var index = document.getElementById("account.accountNum").selectedIndex;
			document.getElementById("account.balanceAmt").selectedIndex = index;
			var maxAvailable = document.getElementById("account.balanceAmt").value;
			document.getElementById("amtTransfer").setAttribute("max",
					maxAvailable);

		}

		function selectedIndexBeneficiary() {
			var index = document.getElementById("customerName").selectedIndex;
			document.getElementById("accountNumber").selectedIndex = index;
			document.getElementById("ifscCode").selectedIndex = index;

		}
	</script>
</body>
</html>