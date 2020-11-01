
<%@page import="java.time.LocalDate"%>


<html>

	<head>

		<title>IBS-Accounts</title>

	</head>

	<body>

<h3><%=LocalDate.now() %></h3>
		<h1>IBS BANK</h1>

		<jsp:include page="menuaccounts.jsp"/>

		<h2>Savings Account</h2>
		<h3> Total Account Balance</h3>
		
		<form action="acbal" method="POST" >

			<div>

				<label>Account Number:</label>
				<% String accountNumber = "000123456789";
					out.println(""+ accountNumber);%>

			</div>
			<div>

				<label>Amount:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>	
				<% double totalAmount = 700000;
					out.println(""+ totalAmount);%>
			</div>
			
</body>
		


</html>