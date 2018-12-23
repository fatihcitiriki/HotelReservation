<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="java.util.ArrayList, db.Room, db.DB" %>

<%
	ArrayList<Room> rooms = DB.getRooms();
%>

<jsp:include page="header.jsp" />

		<div class="card content">
			<div class="card-body">
				<div class="row">
				<%
					for (Room room : rooms) {
				%>
							<div class="col-md-4">
								<div style="border: 1px solid #ccc; padding: 25px">
									<h6><%= room.getName() %></h6>
									<p>Properties: <%= room.getProperties() %></p>
									<p>Kisi Sayisi: <%= room.getPerson() %></p>
								</div>
							</div>
				<%
					}
				%>
				</div>				
			</div>
		</div>
		
<jsp:include page="footer.jsp" />