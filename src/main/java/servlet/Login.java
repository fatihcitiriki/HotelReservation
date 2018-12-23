package servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import db.DB;
import db.User;

public class Login extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			User user = DB.login(req.getParameter("username"), req.getParameter("password"));
			if(user != null) {
		        HttpSession session = req.getSession(true);
		        session.setAttribute("hotelUserId", user.getId());
		        session.setAttribute("hotelUserName", user.getName());
		        session.setAttribute("hotelUserAdmin", user.getStatus());
				resp.sendRedirect("index.jsp");
			} else {
				resp.sendRedirect("login.jsp?e=1");
			}

		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}		
	}
	
}
