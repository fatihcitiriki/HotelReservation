package db;

public class User {
	
	private String id;
	private String name;
	private String username;
	private String password;
	private String status;
	
	public User(String id, String name, String username, String password, String status) {
		this.id = id;
		this.name = name;
		this.username = username;
		this.password = password;
		this.status = status;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
}