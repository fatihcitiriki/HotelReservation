package db;

public class Res {
	private String id;
	private String date;
	private String day;
	private String user_id;
	private String room_id;
	
	public Res(String id, String date, String day, String user_id, String room_id) {
		this.id = id;
		this.date = date;
		this.day = day;
		this.user_id = user_id;
		this.room_id = room_id;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getDay() {
		return day;
	}

	public void setDay(String day) {
		this.day = day;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	
	public String getRoom_id() {
		return room_id;
	}

	public void setRoom_id(String room_id) {
		this.room_id = room_id;
	}
}
