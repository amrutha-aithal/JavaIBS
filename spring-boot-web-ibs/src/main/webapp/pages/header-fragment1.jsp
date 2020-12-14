<%@page import="java.time.LocalDateTime"%>
<%@ page import="java.time.format.DateTimeFormatter"%>
<%LocalDateTime localDateTime = LocalDateTime.now();%>
<% String date=localDateTime.format(DateTimeFormatter.ofPattern("dd-MMM-YYYY hh:mm a"));%>

<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
	<a class="navbar-brand" href="/home">IBS Bank</a>
	<ul class="navbar-nav">
    	<li class="nav-item active ">
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
   		 <li class="nav-item ">
      		<div class="nav-link disabled" ><%=date %></div>
   		 </li>
   </ul>    
</nav>