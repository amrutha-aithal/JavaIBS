
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
     		 <a class="nav-link" href="/signin">Sign In</a>
    	</li> 
    	<li class="nav-item ">
      		<a class="nav-link" href="/signup">Registration</a>
   		 </li> 
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






