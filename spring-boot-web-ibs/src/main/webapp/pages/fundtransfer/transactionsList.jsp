<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<title>IBS-Fund Transactions</title>
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
		<div class="jumbotron" align="center">
			<div class="btn-lg btn-info">Statements</div>
			<br> <br> <a href="#"><button type="button"
					class="btn-lg btn-success" onclick="balanceChk()">Balance
					Check</button></a> <a href="#"><button type="button"
					class="btn-lg btn-success" onclick="miniStatement()">Mini
					Statement</button></a> <a href="/fundtransfer/monthlyStatements"><button
					type="button" class="btn-lg btn-success">Monthly Statement</button></a>
			<br> <br>
			<div id="balanceChk" style="display: none">
				<c:choose>
					<c:when test="${accounts==null}">
						<div class="alert alert-info">
							<strong>No accounts to display</strong>
						</div>
					</c:when>
					<c:otherwise>
						<table class="table table-bordered table-striped">
							<thead>
								<tr>
									<th>Account Number</th>
									<th>Balance Amount</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="c" items="${accounts }">
									<tr>
										<td>${c.accountNum }</td>
										<td>${c.balanceAmt}</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</c:otherwise>
				</c:choose>
			</div>
		</div>
		<div id="miniStatement" style="display: none">

			<h2>Transaction Details</h2>

			<c:choose>
				<c:when test="${fund==null}">
					<div class="alert alert-info">
						<strong>No Transactions found to display</strong>
					</div>
				</c:when>
				<c:otherwise>
					<table class="table table-bordered table-striped">
						<thead>
							<tr>
								<th>Transaction ID#</th>
								<th>User Account #</th>
								<th>Beneficiary / Service Provider</th>
								<th>Fund Transferred</th>
								<th>Transaction Date</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="c" items="${fund }">
								<tr>
									<td>${c.transactionID }</td>
									<td>${c.account.accountNum }</td>
									<td>${c.beneficiary.beneficiaryName}${c.serviceProvider.customerName}-${c.beneficiary.beneficiaryAccNum}${c.serviceProvider.accountNumber}</td>
									<td>${c.amtTransfer}</td>
									<td>${c.transactionDate}</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</c:otherwise>
			</c:choose>
		</div>
	</section>
	<script type="text/javascript">
		function balanceChk() {
			var x = document.getElementById("balanceChk");
			if (x.style.display === "none") {
				x.style.display = "block";
			}
		}

		function miniStatement() {
			var x = document.getElementById("miniStatement");
			if (x.style.display === "none") {
				x.style.display = "block";
			}
		}
	</script>
</body>
</html>