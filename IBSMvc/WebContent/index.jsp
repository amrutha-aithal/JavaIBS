<%@page import="java.time.LocalDate"%>

<html>

	<head>

		<title>IBS-Home</title>
		
		<style>
		
		.div{
		
		border:2px;background-image: linear-gradient(grey, lightgrey); border-style:solid;height:50px;width:140px;float:left; border-color:#0000A0; font-weight:bold;padding: 1em;
		
		}
		
		.tooltip {
  position: relative;
  display: inline-block;
  border-bottom: 1px dotted black; /* If you want dots under the hoverable text */
}
.tooltip .tooltiptext {
  visibility: hidden;
  width: 120px;
  background-color: black;
  color: #fff;
  text-align: center;
  border-radius: 6px;
  padding: 5px 0;

  /* Position the tooltip */
  position: absolute;
  z-index: 1;
}

.tooltip:hover .tooltiptext {
  visibility: visible;
}

.tooltip1 {
  position: relative;
  display: inline-block;
  border-bottom: 1px dotted black; /* If you want dots under the hoverable text */
}
.tooltip1 .tooltiptext1 {
  visibility: hidden;
  width: 120px;
  background-color: black;
  color: #fff;
  text-align: center;
  border-radius: 6px;
  padding: 5px 0;

  /* Position the tooltip */
  position: absolute;
  z-index: 1;
}

.tooltip1:hover .tooltiptext1 {
  visibility: visible;
}

.tooltip3 {
  position: relative;
  display: inline-block;
  border-bottom: 1px dotted black; /* If you want dots under the hoverable text */
}
.tooltip3 .tooltiptext3 {
  visibility: hidden;
  width: 120px;
  background-color: black;
  color: #fff;
  text-align: center;
  border-radius: 6px;
  padding: 5px 0;

  /* Position the tooltip */
  position: absolute;
  z-index: 1;
}

.tooltip3:hover .tooltiptext3 {
  visibility: visible;
}

.tooltip4 {
  position: relative;
  display: inline-block;
  border-bottom: 1px dotted black; /* If you want dots under the hoverable text */
}
.tooltip4 .tooltiptext4 {
  visibility: hidden;
  width: 120px;
  background-color: black;
  color: #fff;
  text-align: center;
  border-radius: 6px;
  padding: 5px 0;

  /* Position the tooltip */
  position: absolute;
  z-index: 1;
}

.tooltip4:hover .tooltiptext4 {
  visibility: visible;
}
		
		</style> 

	</head>

	<body>

		<h3><%=LocalDate.now() %></h3>

		<h1>IBS BANK</h1>

		<jsp:include page="menu.jsp"/>

		

		<h2>Welcome to IBS Bank</h2>

		<p>

		 IBS Bank provides features like easy fund transfer, services provided for bills etc..		
				
		 </p>
		 
		 <div class="tooltip">
		<p style="border:2px;background-image: linear-gradient(grey, lightgrey); border-style:solid;height:50px;width:140px;float:left; border-color:#0000A0; font-weight:bold;padding: 1em;"><br/>ACCOUNTS</p>
  <span class="tooltiptext">IBS offers the different type of accounts like Savings Deposit , Recurring Deposit, Fixed Deposit. To enjoy these features please register by signing up.Already a customer, SignIn</span>
</div>

 <div class="tooltip1">
		<p style="border:2px;background-image: linear-gradient(grey, lightgrey); border-style:solid;height:50px;width:140px;float:left; border-color:#0000A0; font-weight:bold;padding: 1em;"><br/>FUND TRANSFER</p>
  <span class="tooltiptext1">IBS offers easy fund transfer to their beneficiaries in the other banks or same bank.To enjoy these features, please register by signing up. Already a customer, SignIn</span>
</div>
<br>
<div class="tooltip3">
		<p style="border:2px;background-image: linear-gradient(grey, lightgrey); border-style:solid;height:50px;width:140px;float:left; border-color:#0000A0; font-weight:bold;padding: 1em;"><br/>BILL PAYMENTS</p>
  <span class="tooltiptext3">IBS offers variety of services like pay phone bills, electricity bills and lot more just in a click.To enjoy these features, please register by signing up. Already a customer, SignIn</span>
</div>

<div class="tooltip4">
		<p style="border:2px;background-image: linear-gradient(grey, lightgrey); border-style:solid;height:50px;width:140px;float:left; border-color:#0000A0; font-weight:bold;padding: 1em;"><br/>STATEMENTS</p>
  <span class="tooltiptext4">IBS offers bank statements - Monthly, Annual and Periodic.To enjoy these features, please register by signing up. Already a customer, SignIn</span>
</div>
		 
		 
		<!--  <p style="border:2px;background-image: linear-gradient(grey, lightgrey); border-style:solid;height:50px;width:140px;float:left; border-color:#0000A0; font-weight:bold;padding: 1em;"><br/>ACCOUNTS</p>

		<p style="border:2px; background-image: linear-gradient(grey, lightgrey);border-style:solid;height:50px;width:140px;float:right;margin-right:900px; border-color:#0000A0;font-weight:bold; padding: 1em;"><br/>FUND TRANSFER</p>
		
		 <p style="border:2px;background-image: linear-gradient(grey, lightgrey); border-style:solid;height:50px;width:140px;float:left; border-color:#0000A0; font-weight:bold;padding: 1em;"><br/>BILL PAYMENTS</p>

		<p style="border:2px; background-image: linear-gradient(grey, lightgrey);border-style:solid;height:50px;width:140px;float:right;margin-right:900px; border-color:#0000A0;font-weight:bold; padding: 1em;"><br/>STATEMENTS</p>
		 -->
		
  
		
	</body>

</html>