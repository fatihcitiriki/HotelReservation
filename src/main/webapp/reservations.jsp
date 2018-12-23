<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="java.util.ArrayList, db.Room, db.DB" %>

<%
	ArrayList<Room> rooms = DB.getRooms();
%>

<%
	java.text.DateFormat df = new java.text.SimpleDateFormat("dd/MM/yyyy");
	String formattedDate = df.format(new java.util.Date());
%>

<jsp:include page="header.jsp" />

	<div class="card content">
			<div class="card-body col-md-5 mr-auto ml-auto">
				<form method="post" action="reservation">
				 	<div class="form-group">
					    <label>Select Room</label>
					    <select class="form-control" name="room" required>
					      	<%
					      		for (Room room : rooms) {
							%>
							
								<option value="<%= room.getId() %>"><%= room.getName() %></option>
									
							<%
					      		}
					      	%>
					    </select>
					  </div>
					    
					  <div class="form-group">
						    <label>Day</label>
						    <input type="number" class="form-control" name="day" required>
					  </div>
					  
					  <div class="form-group">
						    <label>Date</label>
						    <input type="text" class="form-control" name="date" value="<% out.print(formattedDate); %>" required>
					  </div>
				 
				 
				  <button type="submit" class="btn btn-primary">Send Reservation</button>
				</form>
				
				<%
				
					if(request.getParameter("r") != null && request.getParameter("r").equals("1")) {
						%>
						
						<div class="text-success" style="margin-top: 15px">
							Reservation is successful.
						</div>
						
						<%
					}
				
				%>
			</div>
		</div>
		
<jsp:include page="footer.jsp" />