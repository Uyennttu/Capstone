package entity;

public class Destination {
	private int id;

	private String state;

	public Destination() {
		// TODO Auto-generated constructor stub
	}

	public Destination(int id, String state) {
		super();
		this.id = id;
		this.state = state;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

}
