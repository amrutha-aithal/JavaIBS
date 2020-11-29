
<%@page import="java.time.LocalDateTime"%>
<%@ page import="java.time.format.DateTimeFormatter"%>
 <link rel="stylesheet" href="/css/style.css" />

<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
<hr />
      <a class="nav-link" href="/home">Home</a>
    <span>|</span>
      <a class="nav-link" href="/signup">Sign Up</a>
   <span>|</span>
      <a class="nav-link" href="/signin">Sign In</a>
   <span>|</span> 
    <a class="nav-link" href="/register">Registration</a>
   <span>|</span> 
  
  <div class="date">
		<%LocalDateTime localDateTime = LocalDateTime.now();%>
		<%=localDateTime.format(DateTimeFormatter.ofPattern("dd-MMM-YYYY hh:mm a"))%>
	</div>

	<hr />
</nav>






