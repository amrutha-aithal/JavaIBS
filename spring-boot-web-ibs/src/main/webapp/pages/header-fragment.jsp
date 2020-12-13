
<%@page import="java.time.LocalDateTime"%>
<%@ page import="java.time.format.DateTimeFormatter"%>
<%LocalDateTime localDateTime = LocalDateTime.now();%>
<% String date=localDateTime.format(DateTimeFormatter.ofPattern("dd-MMM-YYYY hh:mm a"));%>
 <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
	<a class="navbar-brand" href="/home">IBS BANK</a>
	<ul class="navbar-nav">
      <li class="nav-item "><a class="nav-link" href="/home">Home</a></li>
      <li class="nav-item "><a class="nav-link" href="/signin">Sign In</a></li>
	   <li class="nav-item "> <a class="nav-link" href="/signup">Registration</a></li>
  </ul>
</nav>
  <div style="text-align:right"><%=date %></div>

<!-- <script type="text/javascript">
function updateClock() {
    var now = new Date();
    var time = now.getHours() + ':' + now.getMinutes() +':'+ now.getSeconds(), // again, you get the idea
        date = [now.getDate(), now.getMonth() + 1, now.getFullYear()].join('-');
    document.getElementById('date').innerHTML = [date, time].join(' ');
    setInterval(updateClock,1000);
}
</script> -->

<%-- <%@page import="java.time.LocalDateTime"%>
<%@ page import="java.time.format.DateTimeFormatter"%>
 <link rel="stylesheet" href="/css/style.css" />

<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
<hr />
      <a class="nav-link" href="/home">Home</a>
    <span>|</span>
      <!-- <a class="nav-link" href="/signup">Sign Up</a>
   <span>|</span> -->
      <a class="nav-link" href="/signin">Sign In</a>
   <span>|</span> 
    <a class="nav-link" href="/signup">Registration</a>
   <span>|</span> 
  
  <div class="date">
		<%LocalDateTime localDateTime = LocalDateTime.now();%>
		<%=localDateTime.format(DateTimeFormatter.ofPattern("dd-MMM-YYYY hh:mm a"))%>
	</div>

	<hr />
</nav>
 --%>


