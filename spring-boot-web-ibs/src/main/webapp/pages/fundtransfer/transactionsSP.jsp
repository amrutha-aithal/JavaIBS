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
	<jsp:include page="/header1" />
	<section class="container-fluid p-4">
		<div id="miniStatement">
			<h2>Transaction Details</h2>
			<c:choose>
				<c:when test="${transactions==null}">
					<div class="alert alert-info">
						<strong>No Transactions found to display</strong>
					</div>
				</c:when>
				<c:otherwise>
					<table class="table table-bordered table-striped">
						<thead>
							<tr>
								<th>Transaction ID#</th>
								<th>User Details</th>
								<th>Payment Amount</th>
								<th>Transaction Date</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="c" items="${transactions }">
								<tr>
									<td>${c.transactionID }</td>
									<td>${c.account.accountNum}</td>
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