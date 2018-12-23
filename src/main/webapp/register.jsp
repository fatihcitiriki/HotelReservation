<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<jsp:include page="header.jsp" />

		<div class="card content">
			<div class="card-body col-md-5 mr-auto ml-auto">
				<form method="post" action="register">
					<div class="form-group">
				    <label>Name</label>
				    <input type="text" class="form-control" name="name" required>
				  </div>
				  <div class="form-group">
				    <label>Username</label>
				    <input type="text" class="form-control" name="username" required>
				  </div>
				  <div class="form-group">
				    <label>Password</label>
				    <input type="password" class="form-control" name="password" required>
				  </div>
				  <button type="submit" class="btn btn-primary">Register</button>
				</form>
				
				<%
				
					if(request.getParameter("r") != null && request.getParameter("r").equals("1")) {
						%>
						
						<div class="text-success" style="margin-top: 15px">
							You successfully registered. <a href="login.jsp">Login</a>
						</div>
						
						<%
					}
				
				%>
			</div>
		</div>
		
<jsp:include page="footer.jsp" />