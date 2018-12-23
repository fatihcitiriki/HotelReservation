<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<jsp:include page="header.jsp" />

		<div class="card content">
			<div class="card-body col-md-5 mr-auto ml-auto">
				<form method="post" action="login">
				  <div class="form-group">
				    <label>Username</label>
				    <input type="text" class="form-control" name="username" required>
				  </div>
				  <div class="form-group">
				    <label>Password</label>
				    <input type="password" class="form-control" name="password" required>
				  </div>
				  <button type="submit" class="btn btn-primary">Login</button>
				</form>
				
				<%
				
					if(request.getParameter("e") != null && request.getParameter("e").equals("1")) {
						%>
						
						<div class="text-danger" style="margin-top: 15px">
							Username or Password is wrong!
						</div>
						
						<%
					}
				
				%>
			</div>
		</div>
		
<jsp:include page="footer.jsp" />