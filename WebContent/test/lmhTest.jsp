<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="domain.Ticket" 
		 import="lmh.dao.TicketDao"
		 import="lmh.dao.TicketDaoImpl"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>
<%
TicketDao tm = new TicketDaoImpl();
String title = "abcd";

Ticket[] tks = tm.getTickets(title);

for(Ticket tck:tks){
%>
	<p><%=tck.getGrade() %></p>	
	<p><%=tck.getSeat() %></p>	
	<p><%=tck.getState() %></p>	
<%	
}
%>



</body>
</html>