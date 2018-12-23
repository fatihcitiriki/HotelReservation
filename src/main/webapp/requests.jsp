<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="java.util.ArrayList, db.Res, db.DB" %>

<%
	ArrayList<Res> reservations = DB.getReservations();
%>

<jsp:include page="header.jsp" />

		<div class="card content">
			<div class="card-body">
			
				<table class="table">
				<thead>
				    <tr>
				      <th scope="col">User</th>
				      <th scope="col">Room</th>
				      <th scope="col">Date</th>
				  		 <th scope="col">Day</th>
				     
				    </tr>
				  </thead>
				  <tbody>
				
				<%
					for (Res reservation : reservations) {
				%>
		
							 <tr>
						      <td><%= DB.getUser(reservation.getUser_id()) %></td>
						      <td><%= DB.getRoom(reservation.getRoom_id()) %></td>
						      <td><%= reservation.getDate() %></td>
						      <td><%= reservation.getDay() %></td>
						    </tr>
				<%
					}
				%>
				
				  </tbody>
			</table>
			</div>
		</div>
		
<jsp:include page="footer.jsp" />