<%@page import="java.time.LocalDate"%>


<html>

	<head>

		<title>IBS-Services</title>

	</head>

	<body>

<h3><%=LocalDate.now() %></h3>
		<h1>IBS BANK</h1>

<h2> Service Provider</h2>

<nav>

	<hr />
	  <a href="home.jsp">Home</a>

	 <span>|</span>
	 <a href="addbiller.jsp">Add Biller</a>

	 <span>|</span>

	 <a href="deletebiller.jsp">Delete Biller</a>
	 
	 <span>|</span>

	 <a href="paybills.jsp">Pay Bills</a>
	 
	 <span>|</span>

	 <a href="history.jsp">History</a>
	 
	  <span>|</span>

	 <a href="signout.jsp">Signout</a>
	 
	 

	<hr />

</nav>