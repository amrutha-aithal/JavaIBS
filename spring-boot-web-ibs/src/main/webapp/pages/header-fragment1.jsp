<%@page import="java.time.LocalDateTime"%>
<%@ page import="java.time.format.DateTimeFormatter"%>
<%LocalDateTime localDateTime = LocalDateTime.now();%>
<% String date=localDateTime.format(DateTimeFormatter.ofPattern("dd-MMM-YYYY hh:mm a"));%>

<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
	<a class="navbar-brand" href="/home">IBS Bank</a>
	<ul class="navbar-nav">
    	<li class="nav-item ">
      		<a class="nav-link" href="/home">Home</a>
    	</li>
    	<li class="nav-item ">
     		 <a class="nav-link" href="/accounts">Accounts</a>
    	</li> 
    	<li class="nav-item ">
      		<a class="nav-link" href="/fundtransfer">Fund Transfer</a>
   		 </li> 
   		 <li class="nav-item ">
      		<a class="nav-link" href="/bankservices">Bank Services</a>
   		 </li>
   		 <li class="nav-item ">
      		<a class="nav-link" href="/signin">Sign Out</a>
   		 </li>
   </ul>    
 
</nav>
	<div style="text-align:right"><%=date %></div>





	
	<%--<a href="index.jsp">Home</a>

	 <span>|</span> 
	 
	 <a href="home.jsp">Home</a>

	 <span>|</span>
	 
	 <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
<hr />
      <a class="nav-link" href="/accounts">Accounts</a>
    <span>|</span>
      <a class="nav-link" href="/fundtransfer">Fund Transfer</a>
   <span>|</span>
      <a class="nav-link" href="/bankservices">Bank Services</a>
   <span>|</span> 
<a class="nav-link" href="/signin">Signout</a>
   <span>|</span>
	 <!-- <a href="accounts.jsp">Accounts</a>
	 
	 <span>|</span>

	 <a href="fundtransfer.jsp">Fund Transfer</a>
	 
	 <span>|</span>
	 

	 <a href="menuservices.jsp">Bank Services</a>
	 
	  <span>|</span>

	 <a href="signout.jsp">Signout</a> -->
	 
	 

	<hr />

</nav>--%>