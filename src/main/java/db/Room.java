package db;

public class Room {
	private String id;
	private String name;
	private String properties;
	private String person;
	
	public Room(String id, String name, String properties, String person) {
		this.id = id;
		this.name = name;
		this.properties = properties;
		this.person = person;
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

	public String getProperties() {
		return properties;
	}

	public void setProperties(String properties) {
		this.properties = properties;
	}

	public String getPerson() {
		return person;
	}

	public void setPerson(String person) {
		this.person = person;
	}
	
	
}
