  
<html>
	<head>
		<title>IBS-Error</title>
	<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>	</head>
	<body>
		<jsp:include page="/header" />
		<section class="container-fluid p-4">
			<div class="card card-danger">
				<div class="card-header">
					<h3>An Error Occurred While Processing Your Request</h3>
				</div>
				<div class="card-body">
					<h5>${errMsg }</h5>
					<ol>
						<li>The above error occurred while processing your request</li>
						<li>Please correct your data before submitting 
						- if the error message is about that</li>
						<li>If the shown error is irrelevant or persistent please contact Admin</li>
					</ol>
				</div>
			</div>
		</section>
	</body>
</html>