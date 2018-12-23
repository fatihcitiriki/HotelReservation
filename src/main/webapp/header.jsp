<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
    <link rel="stylesheet" href="style.css">

    <title>Hotel Reservation</title>
  </head>
  <body>
    <div class="container">
    	<header class="header"></header>
    	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNavAltMarkup">
				<div class="navbar-nav">
					<a class="nav-item nav-link active" href="index.jsp">Home</a>
					<%
						if(session.getAttribute("hotelUserId") != null && "1".equals(session.getAttribute("hotelUserAdmin"))) {
					%>
							<a class="nav-item nav-link active" href="reservations.jsp">Reservation</a>
					<%
						}
					%>
				</div>

				<div class="navbar-nav ml-auto">
					<%
						if(session.getAttribute("hotelUserId") == null) {
					%>
			
							<a class="nav-item nav-link active text-success" href="login.jsp">Login</a>
							<a class="nav-item nav-link active text-warning" href="register.jsp">Register</a>
							
					<%		
						}
						else
						{
							
 							out.print("<h6 class='text-white' style='margin-top:10px'>" + session.getAttribute("hotelUserName") + "</h6>" + ", ");

					%>
						
							<a class="nav-item nav-link active text-danger" href="logout">Logout</a>
					
					<% 
						}
					%>
					
					<%
						if(session.getAttribute("hotelUserAdmin") != null && "0".equals(session.getAttribute("hotelUserAdmin"))) {
					%>
			
							<a class="nav-item nav-link active text-info" href="requests.jsp">Reservation Requests</a>
							
					<%		
						}
					%>
				</div>
			</div>
		</nav>