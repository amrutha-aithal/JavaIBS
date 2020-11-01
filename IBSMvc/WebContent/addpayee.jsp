<%@page import="java.time.LocalDate"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>

<html>

	<head>
<meta http-equiv="Content-Type" content="application/x-www-form-urlencoded; charset=ISO-8859-1">
		<title>IBS-AddPayee</title>

	</head>

	<body>

<h3><%=LocalDate.now() %></h3>
		<h2>IBS BANK-Add Payee</h2>
		
		<nav>

	<hr />
	
	<a href="home.jsp">Home</a>

	 <span>|</span>
 
	 <a href="deletepayee.jsp">Delete Payee</a>
	 
	 <span>|</span>

	 <a href="history.jsp">History</a>
	 
	  <span>|</span>

	 <a href="signout.jsp">Signout</a>
	<hr />

</nav>

<form method="get" action="addpayee.jsp"> 
<INPUT TYPE="radio" name="command" value="0"/>IBS Bank
<INPUT TYPE="radio" NAME="command" VALUE="1"/>Other Bank
<INPUT TYPE="submit" VALUE="Go" />
</form>
<%
String sCommand = request.getParameter("command");

%>

<%-- out.println(sCommand);
out.println(""+request.getParameter("command")); --%>

<form action="adpy" method="POST" >

<%-- <c:if test="${sCommand==0}"> --%>


			<div>
				<label>Account No:&nbsp;&nbsp;</label>

				<input type="string" name="accountNumber"  />

			</div>
			<div>

				<label>IFSC Code:&nbsp;&nbsp;&nbsp; </label>

				<input type="string" name="ifscCode"  />

			</div>
			<div>

				<label>Payee Name:&nbsp; </label>
				<input type="string" name="payeeName"  />

			</div>			
			<div>
				<label>Mobile No:&emsp; </label>
				<input type="string" name="mobileNumber"  />

			</div>
			<div>
				<label>Email ID:&emsp;&nbsp;&nbsp;&nbsp; </label>
				<input type="string" name="emailID"  />

			</div>
			
							<button>SUBMIT</button>
				

			</div>
		<%--	</c:if> --%>
			
</form>	

		
		</body>
		


</html>