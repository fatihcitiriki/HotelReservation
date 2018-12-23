package servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db.DB;
import db.Res;

public class Reservation extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			boolean res = DB.reservation(new Res("", req.getParameter("date"), req.getParameter("day"), req.getSession().getAttribute("hotelUserId").toString() ,req.getParameter("room")));
			if(res) {
				resp.sendRedirect("reservations.jsp?r=1");
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}	
}
