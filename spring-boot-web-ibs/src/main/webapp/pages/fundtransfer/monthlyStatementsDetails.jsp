<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!doctype html>
<html>
<title>Monthly Statements</title>
<head>
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
		<h3>Statements Details</h3>
		<div id="monthlyStatement">
			<c:choose>
				<c:when test="${transactions==null || transactions.isEmpty()}">
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
							<c:forEach var="c" items="${transactions }">
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
</body>
</html>
