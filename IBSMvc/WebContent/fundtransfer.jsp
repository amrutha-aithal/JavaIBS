<%@page import="java.time.LocalDate"%>


<html>

	<head>

		<title>IBS-Fundtransfer</title>

	</head>

	<body>

<h3><%=LocalDate.now() %></h3>
		<h1>IBS BANK</h1>
<h2>Fund Transfer</h2>


<nav>

	<hr />
	 <a href="home.jsp">Home</a>

	 <span>|</span>
	 
	 <a href="addpayee.jsp">Add Payee</a>

	 <span>|</span>

	 <a href="deletepayee.jsp">Delete Payee</a>
	 
	 <span>|</span>

	 <a href="history.jsp">History</a>
	 
	  <span>|</span>

	 <a href="signout.jsp">Signout</a>
	 
	 

	<hr />

</nav>