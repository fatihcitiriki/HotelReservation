package db;
import java.sql.*;
import java.util.ArrayList;

public class DB {
	
	public static User login(String username, String password) throws ClassNotFoundException, SQLException {
        Class.forName("com.mysql.jdbc.Driver");
        
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel?" + "user=root&password=mysql");
        PreparedStatement st = con.prepareStatement("select * from user where username = ? and password = ?");
        st.setString(1, username); 
        st.setString(2, password);
        
        ResultSet rs = st.executeQuery();
        
        int i = 0;
        
        while (rs.next()) {
        	i++;
        	return new User(rs.getString("id"), rs.getString("name"), rs.getString("username"), rs.getString("password"), rs.getString("status"));
        }

		return null; 
	}
	
	public static boolean register(User user) throws SQLException, ClassNotFoundException {
        Class.forName("com.mysql.jdbc.Driver");
        
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel?" + "user=root&password=mysql");
        PreparedStatement st = con.prepareStatement("insert into user (name, username, password, status) values (?,?,?,?)");
        st.setString(1, user.getName());
        st.setString(2, user.getUsername());
        st.setString(3, user.getPassword());
        st.setString(4, user.getStatus());
        
        st.execute();
        
        return true;
	}
	
	public static ArrayList<Room> getRooms() throws ClassNotFoundException, SQLException {
		 Class.forName("com.mysql.jdbc.Driver");
	        
	     Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel?" + "user=root&password=mysql");
	     PreparedStatement st = con.prepareStatement("select * from room");
	     
	     ResultSet rs = st.executeQuery();
	     
	     ArrayList<Room> rooms = new ArrayList<Room>();
	     
	     while (rs.next()) {
	    	 rooms.add(new Room(rs.getString("id"), rs.getString("name"), rs.getString("properties"), rs.getString("person")));
	     }
	     
	     return rooms;
	}
	
	public static boolean reservation(Res reservation) throws SQLException, ClassNotFoundException {
		 Class.forName("com.mysql.jdbc.Driver");
		
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel?" + "user=root&password=mysql");
		PreparedStatement st = con.prepareStatement("insert into reservation (date, day, user_id, room_id) values (?,?,?,?)");
		st.setString(1, reservation.getDate());
		st.setString(2, reservation.getDay());
		st.setString(3, reservation.getUser_id());
		st.setString(4, reservation.getRoom_id());
		
		st.execute();
		
		return true;
	}
	
	public static ArrayList<Res> getReservations() throws ClassNotFoundException, SQLException {
		 Class.forName("com.mysql.jdbc.Driver");
	        
	     Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel?" + "user=root&password=mysql");
	     PreparedStatement st = con.prepareStatement("select * from reservation");
	     
	     ResultSet rs = st.executeQuery();
	     
	     ArrayList<Res> reservations = new ArrayList<Res>();
	     
	     while (rs.next()) {
	    	 reservations.add(new Res(rs.getString("id"), rs.getString("date"), rs.getString("day"), rs.getString("user_id"), rs.getString("room_id")));
	     }
	     
	     return reservations;
	}
	
	public static String getUser(String userId) throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.jdbc.Driver");
		
		String name = "";
        
	    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel?" + "user=root&password=mysql");
	    PreparedStatement st = con.prepareStatement("select name from user where id = ?");
		st.setString(1, userId);
	    ResultSet rs = st.executeQuery();
	    
	    while (rs.next()) {
	    	name = rs.getString("name");
	    }
	    
		return name;
	}
	
	public static String getRoom(String roomId) throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.jdbc.Driver");
		
		String name = "";
        
	    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel?" + "user=root&password=mysql");
	    PreparedStatement st = con.prepareStatement("select name from room where id = ?");
		st.setString(1, roomId);
	    ResultSet rs = st.executeQuery();
	    
	    while (rs.next()) {
	    	name = rs.getString("name");
	    }
	    
		return name;
	}
}
