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
		<h3>Select Date Range</h3>
		<div class="col-sm-5">
			<form action="/fundtransfer/monthlyStatements" method="POST"
				class="form">
				<div class="form-control-group">
					<label for="accountNum" class="form-control-label">Account:</label>
					<select id="accountNum" name="accountNum" class="form-control">
					<c:forEach var="c" items="${accounts }"><option value="${c.accountNum }">${c.accountNum }</option></c:forEach>
					</select>
				</div>
				<div class="form-control-group">
					<label for="startDate" class="form-control-label">From:</label>
					<input class="form-control" type="date" id="startDate" name="startDate"/>
				</div>
				<div class="form-control-group">
					<label for="endDate" class="form-control-label">To:</label>
					<input class="form-control" type="date" id="endDate" name="endDate" />
				</div>
				<br>
				<div class="form-control-group">
					<button class="btn btn-primary">Submit</button>
				</div>
			</form>
		</div>
	</section>
</body>
</html>
