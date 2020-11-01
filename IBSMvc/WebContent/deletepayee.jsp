<%@page import="java.time.LocalDate"%>

<html>

	<head>
		<title>IBS-DeletePayee</title>

	</head>

	<body>

<h3><%=LocalDate.now() %></h3>
		<h2>IBS BANK-Delete Payee</h2>
		
		<nav>

	<hr />
	<a href="home.jsp">Home</a>

	 <span>|</span>
	 
	 <a href="addpayee.jsp">Add Payee</a>
	 
	 <span>|</span>

	 <a href="history.jsp">History</a>
	 
	  <span>|</span>

	 <a href="signout.jsp">Signout</a>
	<hr />

</nav>

<form method="get" action="deletepayee.jsp"> 
<INPUT TYPE="radio" name="command" value="0"/>IBS Bank
<INPUT TYPE="radio" NAME="command" VALUE="1"/>Other Bank
<INPUT TYPE="submit" VALUE="Go" />
</form>
<%
String sCommand = request.getParameter("command");

%>

<%-- out.println(sCommand);
out.println(""+request.getParameter("command")); --%>

<form action="dlpy" method="POST" >

<%-- <c:if test="${sCommand==0 && !friends.isEmpty() }"> --%>


			<div>
				<label>Account No:&nbsp;&nbsp;</label>

				<input type="string" name="accountNumber"  />

			</div>
			<div>

				<label>Payee Name:&nbsp; </label>
				<input type="string" name="payeeName"  />

			</div>			
							<button>DELETE</button>
				

			</div>
		<%--	</c:if> --%>
			
</form>	

		
		</body>
		


</html>