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

	</body>

</html>