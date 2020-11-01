<%@page import="java.time.LocalDate"%>

<html>

	<head>

		<title>IBS-Home</title>

	</head>

	<body>

		<h3><%=LocalDate.now() %></h3>

		<h1>IBS BANK</h1>

		<jsp:include page="menu.jsp"/>

		

		<h2>Welcome to IBS Bank</h2>

		<p>

		 IBS Bank provides features like easy fund transfer, services provided for bills etc..		
				
		 </p>
		 <p style="border:2px; border-style:solid;height:50px;width:140px;float:left; border-color:#0000A0; font-weight:bold;padding: 1em;"><br/>ACCOUNTS</p>

		<p style="border:2px; border-style:solid;height:50px;width:140px;float:right;margin-right:900px; border-color:#0000A0;font-weight:bold; padding: 1em;"><br/>FUND TRANSFER</p>
		
		 <p style="border:2px; border-style:solid;height:50px;width:140px;float:left; border-color:#0000A0; font-weight:bold;padding: 1em;"><br/>BILL PAYMENTS</p>

		<p style="border:2px; border-style:solid;height:50px;width:140px;float:right;margin-right:900px; border-color:#0000A0;font-weight:bold; padding: 1em;"><br/>STATEMENTS</p>
		
		
	</body>

</html>